part of search;

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUseCase _useCase;
  int currentIndex = 0;
  List<CountryEntity> countries = [];
  MovieSearchEntity? moviesSearch;
  ActorSearchEntity? actorsSearch;

  SearchBloc(this._useCase) : super(SearchInitial()) {
    on<ChangePageEvent>(_changePageEvent);
    on<OnSearchEvent>(_onSearchEvent);
    on<GetCountryEvent>(_getCountryEvent);
  }

  FutureOr<void> _changePageEvent(ChangePageEvent event, emitter) {
    currentIndex = event.index;
    emitter(currentIndex == 0 ? SearchMovieLoaded() : SearchActorLoaded());
  }

  FutureOr<void> _onSearchEvent(OnSearchEvent event, Emitter<SearchState> emit) async {
    if (event.searchString.isEmpty) return;
    try {
      AlertUtil.showLoading();
      switch (currentIndex) {
        // nếu đang search movie
        case 0:
          var res = await _useCase.searchMovie(event.searchString, event.filter);
          moviesSearch = res;
          emit(SearchMovieLoaded(res));
          break;
        case 1:
          var res = await _useCase.searchActor(event.searchString, event.filter);
          actorsSearch = res;
          emit(SearchActorLoaded(res));
          break;
      }
      AlertUtil.hideLoading();
    } catch (e) {
      print(e);
      emit(SearchError());
    }
  }

  FutureOr<void> _getCountryEvent(GetCountryEvent event, Emitter<SearchState> emit) async {
    var bodyString = await rootBundle.loadString('assets/jsons/country.json');
    compute(_parseCountryJson, bodyString).then((value) => countries = value);
  }
}

FutureOr<List<CountryEntity>> _parseCountryJson(param) async {
  var res = jsonDecode(param);
  List<CountryModel> countryModel = List.from(res.map((e) => CountryModel.fromJson(e)));
  List<CountryEntity> countryEntities = List.from(countryModel.map((e) =>
      CountryEntity(id: e.id ?? -1, name: e.name ?? "", code: e.code ?? "", image: e.image ?? "")));
  return countryEntities;
}

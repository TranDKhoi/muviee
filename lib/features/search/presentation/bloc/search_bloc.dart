part of search;

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  int currentIndex = 0;
  final SearchUseCase _useCase;

  SearchBloc(this._useCase) : super(SearchInitial()) {
    on<ChangePageEvent>(_changePageEvent);
    on<OnSearchEvent>(_onSearchEvent);
  }

  FutureOr<void> _changePageEvent(ChangePageEvent event, emitter) {
    currentIndex = event.index;
  }

  FutureOr<void> _onSearchEvent(OnSearchEvent event, Emitter<SearchState> emit) async {
    try {
      AlertUtil.showLoading();
      switch (currentIndex) {
        // nếu đang search movie
        case 0:
          MovieSearchEntity res;
          switch (state.runtimeType) {
            // kiểm tra state để truyền đúng paging
            case SearchInitial:
              res = await _useCase.searchMovie();
              break;
            case SearchMovieLoaded:
              res = await _useCase.searchMovie();
              break;
          }
          // emit(SearchMovieLoaded());
          break;
        case 1:
          var res = await _useCase.searchActor();
          // emit(SearchActorLoaded());
          break;
      }
      AlertUtil.hideLoading();
    } catch (e) {}
  }
}

part of list_movie;

@injectable
class ListMovieBloc extends Bloc<ListMovieEvent, ListMovieState> {
  final ListMovieUseCase _useCase;

  ListMovieBloc(this._useCase) : super(ListMovieInitial()) {
    on<GetMovieFirstLoadEvent>(_onFirstLoad);
    on<LoadMoreMovieEvent>(_onLoadMore);
  }

  FutureOr<void> _onFirstLoad(GetMovieFirstLoadEvent event, emit) async {
    try {
      String movieTypeStr = _getAPIType(event.movieType);
      var res = await _useCase.getMovie(0, movieTypeStr);
      emit(ListMovieLoaded(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  FutureOr<void> _onLoadMore(LoadMoreMovieEvent event, Emitter<ListMovieState> emit) async {
    try {
      String movieTypeStr = _getAPIType(event.movieType);
      if (state is ListMovieLoaded) {
        var currState = state as ListMovieLoaded;
        var res = await _useCase.getMovie(currState.movies.page + 1, movieTypeStr);

        MovieSearchEntity tempRes = MovieSearchEntity(
            page: res.page,
            results: currState.movies.results..addAll(res.results),
            totalPage: res.totalPage,
            totalResults: res.totalResults);

        emit(ListMovieLoaded(tempRes));
      }
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  String _getAPIType(MovieType movieType) {
    switch (movieType) {
      case MovieType.latest:
        return "now_playing";
      case MovieType.popular:
        return "popular";
      case MovieType.topRated:
        return "top_rated";
      case MovieType.recommended:
        return "now_playing";
    }
  }
}

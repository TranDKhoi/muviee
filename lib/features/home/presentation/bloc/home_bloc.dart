part of home;

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _useCase;

  HomeBloc(this._useCase) : super(HomeInitial()) {
    on<LoadAllMovieEvent>(_loadAllMovieEvent);
  }

  FutureOr<void> _loadAllMovieEvent(event, emit) async {
    try {
      var res1 = await _useCase.getLatestMovie();
      var res2 = await _useCase.getPopularMovie();
      var res3 = await _useCase.getTopRatedMovie();

      emit(AllMovieLoadedState(
          latestList: res1, popularList: res2, topRatedList: res3));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

part of home;

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _useCase;

  HomeBloc(this._useCase) : super(HomeInitial()) {
    on<LoadAllMovieEvent>(_loadAllMovieEvent);
    on<GetMovieVideoEvent>(_getMovieVideo);
  }

  FutureOr<void> _loadAllMovieEvent(event, emit) async {
    try {
      var res = await Future.wait([
        _useCase.getRecommendedMovie(),
        _useCase.getLatestMovie(),
        _useCase.getPopularMovie(),
        _useCase.getTopRatedMovie(),
      ]);

      emit(AllMovieLoadedState(
          recommendList: res[0], latestList: res[1], popularList: res[2], topRatedList: res[3]));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  FutureOr<void> _getMovieVideo(GetMovieVideoEvent event, Emitter<HomeState> emit) async {
    try {
      AlertUtil.showLoading();
      MovieVideoEntity video = await _useCase.getVideoOfMovie(event.id);
      AlertUtil.hideLoading();
      emit(GetMovieVideoSuccess(movieVideo: video));
      _useCase.saveMovieToMyHistory(event.id);
      GlobalData.ins.currentMovieId = event.id;
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

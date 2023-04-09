part of movie_detail;

@injectable
class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieDetailUseCase _useCase;

  MovieDetailBloc(this._useCase) : super(MovieDetailInitial()) {
    on<LoadMovieDetailEvent>(_loadMovieDetail);
    on<GetMovieVideoEvent>(_getMovieVideo);
  }

  FutureOr<void> _loadMovieDetail(
      LoadMovieDetailEvent event, Emitter<MovieDetailState> emit) async {
    try {
      List<ActorEntity> actor = await _useCase.getActorOfMovie(event.id);
      GalleryEntity gallery = await _useCase.getGalleryOfMovie(event.id);
      ReviewSearchEntity reviewSearch =
          await _useCase.getReviewOfMovie(event.id);

      emit(MovieDetailLoaded(
          actors: actor, gallery: gallery, reviewSearch: reviewSearch));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  Future<FutureOr<void>> _getMovieVideo(
      GetMovieVideoEvent event, Emitter<MovieDetailState> emit) async {
    try {
      AlertUtil.showLoading();
      MovieVideoEntity video = await _useCase.getVideoOfMovie(event.id);
      AlertUtil.hideLoading();
      emit(GetMovieVideoSuccess(movieVideo: video));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

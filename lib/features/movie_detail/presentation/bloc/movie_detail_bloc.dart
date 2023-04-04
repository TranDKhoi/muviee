part of movie_detail;

@injectable
class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieDetailUseCase _useCase;

  MovieDetailBloc(this._useCase) : super(MovieDetailInitial()) {
    on<LoadMovieDetailEvent>(_loadMovieDetail);
  }

  FutureOr<void> _loadMovieDetail(
      LoadMovieDetailEvent event, Emitter<MovieDetailState> emit) async {
    try {
      GalleryEntity gallery = await _useCase.getGalleryOfMovie(event.id);
      List<ActorEntity> actor = await _useCase.getActorOfMovie(event.id);
      ReviewSearchEntity reviewSearch =
          await _useCase.getReviewOfMovie(event.id);

      emit(MovieDetailLoaded(
          actor: actor, gallery: gallery, reviewSearch: reviewSearch));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

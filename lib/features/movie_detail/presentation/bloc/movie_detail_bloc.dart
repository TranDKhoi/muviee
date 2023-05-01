part of movie_detail;

@injectable
class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieDetailUseCase _useCase;

  MovieDetailBloc(this._useCase) : super(MovieDetailInitial()) {
    on<LoadMovieDetailEvent>(_loadMovieDetail);
    on<GetMovieVideoEvent>(_getMovieVideo);
    on<LikeMovieEvent>(_onLikeMovieEvent);
    on<SubmitReviewEvent>(_onSubmitReview);
  }

  FutureOr<void> _loadMovieDetail(
      LoadMovieDetailEvent event, Emitter<MovieDetailState> emit) async {
    try {
      List<ActorEntity> actor = await _useCase.getActorOfMovie(event.id);
      GalleryEntity gallery = await _useCase.getGalleryOfMovie(event.id);
      ReviewSearchEntity reviewSearch = await _useCase.getReviewOfMovie(event.id);

      emit(MovieDetailLoaded(actors: actor, gallery: gallery, reviewSearch: reviewSearch));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  FutureOr<void> _getMovieVideo(GetMovieVideoEvent event, Emitter<MovieDetailState> emit) async {
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

  FutureOr<void> _onLikeMovieEvent(LikeMovieEvent event, Emitter<MovieDetailState> emit) async {
    try {
      bool isLiked = injector<ProfileCubit>()
              .favoriteList
              ?.results
              .where((element) => element.id == event.id)
              .isNotEmpty ??
          false;

      if (isLiked) {
        _useCase.unLikeMovie(event.id).then((value) => injector<ProfileCubit>().getMyFavorite());
        AlertUtil.showToast(R.removedFromFavorite.translate);
      } else {
        _useCase.likeMovie(event.id).then((value) => injector<ProfileCubit>().getMyFavorite());
        AlertUtil.showToast(R.savedToFavorite.translate);
      }
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  Future<FutureOr<void>> _onSubmitReview(
      SubmitReviewEvent event, Emitter<MovieDetailState> emit) async {
    try {
      AlertUtil.showLoading();
      await _useCase.submitReview(event.id, event.content.trim(), event.rating);
      AlertUtil.hideLoading();

      AlertUtil.showToast(R.submittedSuccessfully.translate);
      injector<ProfileCubit>().getMyReview();
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

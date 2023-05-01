part of review;

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewUseCase _useCase;

  ReviewBloc(this._useCase) : super(ReviewInitial()) {
    on<GetReviewEvent>(_getMyReview);
    on<DeleteReviewEvent>(_deleteMyReview);
    on<EditReviewEvent>(_editReview);
    on<GetMovieVideoEvent>(_getMovieVideo);
  }

  Future<FutureOr<void>> _getMyReview(event, emit) async {
    try {
      var res = await _useCase.getMyReview();
      emit(ReviewLoaded(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  Future<FutureOr<void>> _deleteMyReview(DeleteReviewEvent event, Emitter<ReviewState> emit) async {
    try {
      AlertUtil.showLoading();
      await _useCase.deleteMyReview(event.id);
      AlertUtil.hideLoading();
      add(GetReviewEvent());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  Future<FutureOr<void>> _editReview(EditReviewEvent event, Emitter<ReviewState> emit) async {
    try {
      AlertUtil.showLoading();
      await _useCase.editReview(event.id, event.content.trim(), event.rating);
      AlertUtil.hideLoading();

      // edit xong thì back ra load lại và báo thành công
      add(GetReviewEvent());
      NavigationUtil.pop();
      AlertUtil.showToast(R.submittedSuccessfully.translate);
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  FutureOr<void> _getMovieVideo(GetMovieVideoEvent event, Emitter<ReviewState> emit) async {
    try {
      AlertUtil.showLoading();
      MovieVideoEntity video = await _useCase.getVideoOfMovie(event.id);
      AlertUtil.hideLoading();

      //get được movie thì nhảy ra tab watch
      _useCase.saveMovieToMyHistory(event.id);
      GlobalData.ins.currentMovieId = event.id;
      NavigationUtil.popToRoot();
      navigatorKey.currentContext?.read<BottomBarCubit>().navigateToWatchingTab(video);
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

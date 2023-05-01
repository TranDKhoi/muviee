part of watching;

@injectable
class WatchingCubit extends Cubit<WatchingState> {
  WatchingCubit(this._useCase) : super(WatchingInitial(const Duration(milliseconds: 0)));

  final MovieDetailUseCase _useCase;

  void onPositionProgress(Duration pos) {
    emit(WatchingInitial(pos));
  }

  Future<void> submitReview(int id, String content, double rating) async {
    try {
      AlertUtil.showLoading();
      await _useCase.submitReview(id, content.trim(), rating);
      AlertUtil.hideLoading();

      AlertUtil.showToast(R.submittedSuccessfully.translate);
      injector<ProfileCubit>().getMyReview();
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

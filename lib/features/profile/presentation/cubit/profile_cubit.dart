part of profile;

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._useCase) : super(ProfileInitial());

  final ProfileUseCase _useCase;

  MovieSearchEntity? favoriteList;
  MyReviewSearchEntity? reviewList;

  void logOut() async {
    await _useCase.logOut();
    NavigationUtil.pushAndRemoveUntil(page: LoginPage());
  }

  void getMyFavorite() async {
    try {
      _useCase.getMyFavorite().then((res) {
        favoriteList = res;
        emit(ProfileDataLoadedState(res, null));
      });
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  void getMyReview() {
    try {
      _useCase.getMyReview().then((res) {
        reviewList = res;
        emit(ProfileDataLoadedState(null, res));
      });
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  Future<void> changePassword(String old, String newP, String reP) async {
    try {
      AlertUtil.showLoading();
      await _useCase.changePassword(old, newP, reP);
      AlertUtil.hideLoading();
      NavigationUtil.pop();
      AlertUtil.showToast(R.changePassSuccess.translate);
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

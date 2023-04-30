part of profile;

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._useCase) : super(ProfileInitial());

  final ProfileUseCase _useCase;

  MovieSearchEntity? favoriteList;

  void logOut() async {
    await _useCase.logOut();
    NavigationUtil.pushAndRemoveUntil(page: LoginPage());
  }

  void getMyFavorite() async {
    try {
      _useCase.getMyFavorite().then((res) {
        favoriteList = res;
        emit(ProfileDataLoadedState(res));
      });
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  void getMyReview() {
    try {} catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}
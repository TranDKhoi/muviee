part of profile;

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void logOut() {
    SharedService().clearToken();
    GlobalData.ins.currentUser = null;
    GlobalData.ins.localToken = null;
    NavigationUtil.pushAndRemoveUntil(page: LoginPage());
  }
}

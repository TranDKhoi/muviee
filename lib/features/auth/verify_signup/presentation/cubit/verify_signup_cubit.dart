part of verify_signup;

@injectable
class VerifySignupCubit extends Cubit<VerifySignupState> {
  VerifySignupCubit(this._useCase) : super(InitState());

  final VerifySignupUseCase _useCase;

  Future<void> verifyCode(String email, String code) async {
    try {
      AlertUtil.showLoading();
      var res = await _useCase.verifyCode(email, code);
      AlertUtil.hideLoading();
      GlobalData.ins.currentUser = res;
      emit(VerifySuccessState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

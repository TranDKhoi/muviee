part of verify_forgot;

@injectable
class VerifyForgotCubit extends Cubit<VerifyForgotState> {
  VerifyForgotCubit(this._useCase) : super(VerifyForgotInitial());

  final VerifyForgotUseCase _useCase;

  Future<void> verifyCode(String email, String code) async {
    try {
      AlertUtil.showLoading();
      var res = await _useCase.verifyCode(email, code);
      AlertUtil.hideLoading();
      emit(VerifyForgotSuccess(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

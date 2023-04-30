part of forgot_pass;

@injectable
class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit(this._useCase) : super(ForgotPassInitial());

  final ForgotPassUseCase _useCase;

  void confirmForgotClicked(String email) async {
    try {
      AlertUtil.showLoading();
      await _useCase.confirmForgotPass(email.trim());
      AlertUtil.hideLoading();
      emit(ConfirmSuccessState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

part of verify_forgot;

@injectable
class VerifyForgotCubit extends Cubit<VerifyForgotState> {
  VerifyForgotCubit() : super(VerifyForgotInitial());

  void verifyCode(String code) {
    emit(VerifyForgotSuccess());
  }
}

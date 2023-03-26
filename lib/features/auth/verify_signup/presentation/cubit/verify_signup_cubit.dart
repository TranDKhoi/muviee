part of verify_signup;

@injectable
class VerifySignupCubit extends Cubit<VerifySignupState> {
  VerifySignupCubit() : super(InitState());

  void verifyCode(String code) {
    emit(VerifySuccessState());
  }
}

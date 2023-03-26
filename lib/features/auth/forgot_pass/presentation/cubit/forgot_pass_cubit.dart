part of forgot_pass;

@injectable
class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit() : super(ForgotPassInitial());

  void confirmForgotClicked(String email) {
    emit(ConfirmSuccessState());
  }
}

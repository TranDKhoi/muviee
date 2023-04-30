part of signup;

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUseCase _useCase;

  SignupBloc(this._useCase) : super(InitState()) {
    on<ConfirmButtonClicked>(_confirmSignupEvent);
  }

  Future<FutureOr<void>> _confirmSignupEvent(ConfirmButtonClicked event, emit) async {
    SignupEntity entity = SignupEntity(
        email: event.email.trim(),
        password: event.password.trim(),
        rePassword: event.rePass.trim(),
        username: event.userName.trim());

    try {
      AlertUtil.showLoading();
      await _useCase.confirmSignup(entity);
      AlertUtil.hideLoading();
      emit(ConfirmSuccessState());
      emit(InitState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

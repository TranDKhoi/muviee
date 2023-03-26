part of signup;

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(InitState()) {
    on<ConfirmButtonClicked>(_confirmSignupEvent);
  }

  FutureOr<void> _confirmSignupEvent(event, emit) {
    try {
      emit(ConfirmSuccessState());
      emit(InitState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

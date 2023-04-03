part of login;

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _useCase;

  LoginBloc(this._useCase) : super(InitState()) {
    on<LoginButtonClicked>(_loginClickedEvent);
  }

  _loginClickedEvent(LoginButtonClicked event, emit) async {
    try {
      AlertUtil.showLoading();
      var res = await _useCase.login(event.email, event.password);
      AlertUtil.hideLoading();
      GlobalData.ins.currentUser = res;
      emit(LoginSuccessState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

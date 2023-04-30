part of change_pass;

@injectable
class ChangePassCubit extends Cubit<ChangePassState> {
  ChangePassCubit(this._useCase) : super(ChangePassInitial());
  final ChangePassUseCase _useCase;

  Future<void> confirmChangePass(
      {required String pass, required String rePass, required String tempToken}) async {
    try {
      AlertUtil.showLoading();
      var res = await _useCase.changePass(pass.trim(), rePass.trim(), tempToken);
      AlertUtil.hideLoading();
      GlobalData.ins.currentUser = res;
      emit(ChangePassSuccessState());
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

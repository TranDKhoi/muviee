part of change_pass;

@injectable
class ChangePassCubit extends Cubit<ChangePassState> {
  ChangePassCubit() : super(ChangePassInitial());

  void confirmChangePass({required String pass, required String rePass}) {
    emit(ChangePassSuccessState());
  }
}

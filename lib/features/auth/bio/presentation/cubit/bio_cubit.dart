part of bio;

@injectable
class BioCubit extends Cubit<BioState> {
  BioCubit() : super(BioInitial());

  void saveUserBio({required String nickname, required String country}) {
    emit(SaveBioSuccess());
  }
}

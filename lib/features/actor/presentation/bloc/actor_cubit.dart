part of actor;

@injectable
class ActorCubit extends Cubit<ActorState> {
  ActorCubit(this._useCase) : super(ActorInitial());

  final ActorUseCase _useCase;

  void getMovieOfActor(int actorId) async {
    try {
      var res = await _useCase.getMovieOfActor(actorId);
      emit(ActorMovieLoadedState(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

part of history;

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit(this._useCase) : super(HistoryInitial());

  final HistoryUseCase _useCase;

  void loadMyHistory() async {
    try {
      var res = await _useCase.getMyHistory();
      emit(HistoryLoaded(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }

  void deleteMovie(int id) async {
    try {
      await _useCase.deleteMovie(id);
      loadMyHistory();
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

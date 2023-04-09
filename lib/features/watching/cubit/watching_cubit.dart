part of watching;

@injectable
class WatchingCubit extends Cubit<WatchingState> {
  WatchingCubit() : super(WatchingInitial(const Duration(milliseconds: 0)));

  void onPositionProgress(Duration pos) {
    emit(WatchingInitial(pos));
  }
}

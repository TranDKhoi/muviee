part of watching;

@immutable
abstract class WatchingState extends Equatable {}

class WatchingInitial extends WatchingState {
  final Duration position;

  WatchingInitial(this.position);

  @override
  List<Object?> get props => [position];
}

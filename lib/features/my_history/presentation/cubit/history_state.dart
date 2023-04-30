part of history;

@immutable
abstract class HistoryState extends Equatable {}

class HistoryInitial extends HistoryState {
  @override
  List<Object?> get props => [];
}

class HistoryLoaded extends HistoryState {
  HistoryLoaded(this.movies);

  final List<MovieEntity> movies;

  @override
  List<Object?> get props => [movies];
}

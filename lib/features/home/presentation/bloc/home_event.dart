part of home;

@immutable
abstract class HomeEvent extends Equatable {}

class LoadAllMovieEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetMovieVideoEvent extends HomeEvent {
  final int id;

  GetMovieVideoEvent(this.id);

  @override
  List<Object?> get props => [id];
}

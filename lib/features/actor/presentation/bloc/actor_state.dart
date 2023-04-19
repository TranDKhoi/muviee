part of actor;

@immutable
abstract class ActorState extends Equatable {}

class ActorInitial extends ActorState {
  @override
  List<Object?> get props => [];
}

class ActorMovieLoadedState extends ActorState {
  final List<MovieEntity> movies;

  ActorMovieLoadedState(this.movies);

  @override
  List<Object?> get props => [movies];
}

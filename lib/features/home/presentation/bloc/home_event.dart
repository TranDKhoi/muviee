part of home;

@immutable
abstract class HomeEvent extends Equatable {}

class LoadAllMovieEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

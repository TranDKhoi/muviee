part of movie_detail;

@immutable
abstract class MovieDetailEvent extends Equatable {}

class LoadMovieDetailEvent extends MovieDetailEvent {
  final int id;
  LoadMovieDetailEvent(this.id);
  @override
  List<Object?> get props => [id];
}

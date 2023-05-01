part of movie_detail;

@immutable
abstract class MovieDetailEvent extends Equatable {}

class LoadMovieDetailEvent extends MovieDetailEvent {
  final int id;

  LoadMovieDetailEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetMovieVideoEvent extends MovieDetailEvent {
  final int id;

  GetMovieVideoEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class LikeMovieEvent extends MovieDetailEvent {
  final int id;

  LikeMovieEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class SubmitReviewEvent extends MovieDetailEvent {
  final int id;
  final String content;
  final double rating;

  SubmitReviewEvent({
    required this.id,
    required this.content,
    required this.rating,
  });

  @override
  List<Object> get props => [id, content, rating];
}

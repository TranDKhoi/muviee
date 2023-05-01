part of review;

@immutable
abstract class ReviewEvent extends Equatable {}

class GetReviewEvent extends ReviewEvent {
  @override
  List<Object?> get props => [];
}

class DeleteReviewEvent extends ReviewEvent {
  final String id;

  DeleteReviewEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetMovieVideoEvent extends ReviewEvent {
  final int id;

  GetMovieVideoEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class EditReviewEvent extends ReviewEvent {
  final String id;
  final String content;
  final double rating;

  EditReviewEvent({
    required this.id,
    required this.content,
    required this.rating,
  });

  @override
  List<Object> get props => [id, content, rating];
}

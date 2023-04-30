part of review;

@immutable
abstract class ReviewEvent extends Equatable {}

class GetReviewEvent extends ReviewEvent {
  @override
  List<Object?> get props => [];
}

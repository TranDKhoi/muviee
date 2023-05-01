part of review;

@immutable
abstract class ReviewState extends Equatable {}

class ReviewInitial extends ReviewState {
  @override
  List<Object?> get props => [];
}

class ReviewLoaded extends ReviewState {
  final MyReviewSearchEntity reviews;

  ReviewLoaded(this.reviews);

  @override
  List<Object?> get props => [reviews];
}

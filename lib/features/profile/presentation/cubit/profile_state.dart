part of profile;

@immutable
abstract class ProfileState extends Equatable {}

class ProfileInitial extends ProfileState {
  @override
  List<Object?> get props => [];
}

class ProfileDataLoadedState extends ProfileState {
  final MovieSearchEntity? favorite;
  final MyReviewSearchEntity? reviews;

  ProfileDataLoadedState([this.favorite, this.reviews]);

  @override
  List<Object?> get props => [favorite, reviews];
}

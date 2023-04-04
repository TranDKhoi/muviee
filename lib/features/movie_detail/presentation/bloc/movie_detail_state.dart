part of movie_detail;

@immutable
abstract class MovieDetailState extends Equatable {}

class MovieDetailInitial extends MovieDetailState {
  @override
  List<Object?> get props => [];
}

class MovieDetailLoaded extends MovieDetailState {
  final GalleryEntity gallery;
  final List<ActorEntity> actor;
  final ReviewSearchEntity reviewSearch;

  MovieDetailLoaded({
    required this.gallery,
    required this.actor,
    required this.reviewSearch,
  });

  @override
  List<Object> get props => [gallery, actor, reviewSearch];
}

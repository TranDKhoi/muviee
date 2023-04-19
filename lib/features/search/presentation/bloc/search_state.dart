part of search;

@immutable
abstract class SearchState extends Equatable {}

class SearchInitial extends SearchState {
  @override
  List<Object?> get props => [];
}

class SearchMovieLoaded extends SearchState {
  final MovieSearchEntity searchEntity;

  SearchMovieLoaded(this.searchEntity);

  @override
  List<Object?> get props => [searchEntity];
}

class SearchActorLoaded extends SearchState {
  final ActorSearchModel searchEntity;

  SearchActorLoaded(this.searchEntity);

  @override
  List<Object?> get props => [searchEntity];
}

class SearchError extends SearchState {
  @override
  List<Object?> get props => [];
}

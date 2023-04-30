part of list_movie;

@immutable
abstract class ListMovieState extends Equatable {}

class ListMovieInitial extends ListMovieState {
  @override
  List<Object?> get props => [];
}

class ListMovieLoaded extends ListMovieState {
  final MovieSearchEntity movies;

  ListMovieLoaded(this.movies);

  @override
  List<Object?> get props => [movies];
}

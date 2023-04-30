part of list_movie;

@immutable
abstract class ListMovieEvent extends Equatable {}

class GetMovieFirstLoadEvent extends ListMovieEvent {
  final MovieType movieType;

  GetMovieFirstLoadEvent(this.movieType);

  @override
  List<Object?> get props => [movieType];
}

class LoadMoreMovieEvent extends ListMovieEvent {
  final MovieType movieType;

  LoadMoreMovieEvent(this.movieType);

  @override
  List<Object?> get props => [movieType];
}

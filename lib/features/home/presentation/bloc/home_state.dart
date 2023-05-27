part of home;

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class AllMovieLoadedState extends HomeState {
  final List<MovieEntity> recommendList;
  final List<MovieEntity> latestList;
  final List<MovieEntity> popularList;
  final List<MovieEntity> topRatedList;

  AllMovieLoadedState(
      {this.recommendList = const [],
      this.latestList = const [],
      this.popularList = const [],
      this.topRatedList = const []});

  @override
  List<Object?> get props => [
        recommendList,
        latestList,
        popularList,
        topRatedList,
      ];

  AllMovieLoadedState copyWith({
    List<MovieEntity>? recommendList,
    List<MovieEntity>? latestList,
    List<MovieEntity>? popularList,
    List<MovieEntity>? topRatedList,
  }) {
    return AllMovieLoadedState(
      recommendList: recommendList ?? this.recommendList,
      latestList: latestList ?? this.latestList,
      popularList: popularList ?? this.popularList,
      topRatedList: topRatedList ?? this.topRatedList,
    );
  }
}

class GetMovieVideoSuccess extends HomeState {
  final MovieVideoEntity movieVideo;

  GetMovieVideoSuccess({
    required this.movieVideo,
  });

  @override
  List<Object> get props => [movieVideo];
}

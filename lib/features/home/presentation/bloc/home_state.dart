part of home;

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class AllMovieLoadedState extends HomeState {
  final List<MovieEntity> latestList;
  final List<MovieEntity> popularList;
  final List<MovieEntity> topRatedList;

  AllMovieLoadedState(
      {this.latestList = const [],
      this.popularList = const [],
      this.topRatedList = const []});

  @override
  List<Object?> get props => [
        latestList,
        popularList,
        topRatedList,
      ];

  AllMovieLoadedState copyWith({
    List<MovieEntity>? latestList,
    List<MovieEntity>? popularList,
    List<MovieEntity>? topRatedList,
  }) {
    return AllMovieLoadedState(
      latestList: latestList ?? this.latestList,
      popularList: popularList ?? this.popularList,
      topRatedList: topRatedList ?? this.topRatedList,
    );
  }
}

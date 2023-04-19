import '../../../../common/entity/movie_entity.dart';

abstract class HomeRepository {
  Future<List<MovieEntity>> getLatestMovie();
  Future<List<MovieEntity>> getPopularMovie();
  Future<List<MovieEntity>> getTopRatedMovie();
}

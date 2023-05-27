import '../../../../common/entity/movie_entity.dart';
import '../../../../common/entity/movie_video_entity.dart';

abstract class HomeRepository {
  Future<List<MovieEntity>> getRecommendedMovie();

  Future<List<MovieEntity>> getLatestMovie();

  Future<List<MovieEntity>> getPopularMovie();

  Future<List<MovieEntity>> getTopRatedMovie();

  Future<MovieVideoEntity> getVideoOfMovie(int id);

  Future<void> saveMovieToMyHistory(int id);
}

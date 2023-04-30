import '../../../../common/entity/movie_search_entity.dart';

abstract class ListMovieRepository {
  Future<MovieSearchEntity> getMovie(int page, String type);
}

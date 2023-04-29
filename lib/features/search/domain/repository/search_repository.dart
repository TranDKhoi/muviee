import '../entity/actor_search_entity.dart';
import '../../../../common/entity/movie_search_entity.dart';

abstract class SearchRepository {
  Future<ActorSearchEntity> searchActor(String search, Map? filter);

  Future<MovieSearchEntity> searchMovie(String search, Map? filter);
}

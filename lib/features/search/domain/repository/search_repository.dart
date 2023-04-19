import '../entity/actor_search_entity.dart';
import '../entity/movie_search_entity.dart';

abstract class SearchRepository {
  Future<ActorSearchEntity> searchActor();

  Future<MovieSearchEntity> searchMovie();
}

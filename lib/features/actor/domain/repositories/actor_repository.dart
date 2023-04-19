import '../../../../common/entity/movie_entity.dart';

abstract class ActorRepository {
  Future<List<MovieEntity>> getMovieOfActor(int id);
}

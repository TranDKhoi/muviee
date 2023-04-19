import 'package:injectable/injectable.dart';

import '../../../../common/entity/movie_entity.dart';
import '../repositories/actor_repository.dart';

abstract class ActorUseCase {
  Future<List<MovieEntity>> getMovieOfActor(int id);
}

@Injectable(as: ActorUseCase)
class ActorUseCaseImpl implements ActorUseCase {
  ActorUseCaseImpl(this._repo);

  final ActorRepository _repo;

  @override
  Future<List<MovieEntity>> getMovieOfActor(int id) async {
    return await _repo.getMovieOfActor(id);
  }
}

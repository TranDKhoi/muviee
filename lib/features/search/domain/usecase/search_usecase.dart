import 'package:injectable/injectable.dart';
import 'package:muviee/features/search/domain/entity/actor_search_entity.dart';
import 'package:muviee/features/search/domain/entity/movie_search_entity.dart';
import 'package:muviee/features/search/domain/repository/search_repository.dart';

abstract class SearchUseCase {
  Future<MovieSearchEntity> searchMovie();

  Future<ActorSearchEntity> searchActor();
}

@Injectable(as: SearchUseCase)
class SearchUseCaseImpl implements SearchUseCase {
  SearchUseCaseImpl(this._repo);

  final SearchRepository _repo;

  @override
  Future<ActorSearchEntity> searchActor() {
    throw UnimplementedError();
  }

  @override
  Future<MovieSearchEntity> searchMovie() {
    throw UnimplementedError();
  }
}

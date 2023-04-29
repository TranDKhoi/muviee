import 'package:injectable/injectable.dart';
import 'package:muviee/features/search/domain/entity/actor_search_entity.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';
import 'package:muviee/features/search/domain/repository/search_repository.dart';

abstract class SearchUseCase {
  Future<MovieSearchEntity> searchMovie(String search, Map? filter);

  Future<ActorSearchEntity> searchActor(String search, Map? filter);
}

@Injectable(as: SearchUseCase)
class SearchUseCaseImpl implements SearchUseCase {
  SearchUseCaseImpl(this._repo);

  final SearchRepository _repo;

  @override
  Future<ActorSearchEntity> searchActor(String search, Map? filter) {
    return _repo.searchActor(search, filter);
  }

  @override
  Future<MovieSearchEntity> searchMovie(String search, Map? filter) {
    return _repo.searchMovie(search, filter);
  }
}

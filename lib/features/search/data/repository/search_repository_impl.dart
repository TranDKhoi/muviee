import 'package:injectable/injectable.dart';
import 'package:muviee/features/search/domain/entity/actor_search_entity.dart';
import 'package:muviee/features/search/domain/entity/movie_search_entity.dart';
import 'package:muviee/features/search/domain/repository/search_repository.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<ActorSearchEntity> searchActor() {
    throw UnimplementedError();
  }

  @override
  Future<MovieSearchEntity> searchMovie() {
    throw UnimplementedError();
  }
}

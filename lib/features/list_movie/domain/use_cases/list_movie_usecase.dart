import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';

import '../repositories/list_movie_repository.dart';

abstract class ListMovieUseCase {
  Future<MovieSearchEntity> getMovie(int page, String type);
}

@Injectable(as: ListMovieUseCase)
class ListMovieUseCaseImpl implements ListMovieUseCase {
  ListMovieUseCaseImpl(this._repo);

  final ListMovieRepository _repo;

  @override
  Future<MovieSearchEntity> getMovie(int page, String type) async {
    return await _repo.getMovie(page, type);
  }
}

import 'package:injectable/injectable.dart';
import 'package:muviee/common/models/movie_entity.dart';
import 'package:muviee/features/home/data/repositories/home_repository_impl.dart';

import '../repositories/home_repository.dart';

abstract class HomeUseCase {
  Future<List<MovieEntity>> getLatestMovie();

  Future<List<MovieEntity>> getPopularMovie();

  Future<List<MovieEntity>> getTopRatedMovie();
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  HomeUseCaseImpl(this._repo);

  final HomeRepository _repo;

  @override
  Future<List<MovieEntity>> getLatestMovie() async {
    return await _repo.getLatestMovie();
  }

  @override
  Future<List<MovieEntity>> getPopularMovie() async {
    return await _repo.getPopularMovie();
  }

  @override
  Future<List<MovieEntity>> getTopRatedMovie() async {
    return await _repo.getTopRatedMovie();
  }
}

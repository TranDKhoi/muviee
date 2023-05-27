import 'package:injectable/injectable.dart';

import '../../../../common/entity/movie_entity.dart';
import '../../../../common/entity/movie_video_entity.dart';
import '../repositories/home_repository.dart';

abstract class HomeUseCase {
  Future<List<MovieEntity>> getRecommendedMovie();

  Future<List<MovieEntity>> getLatestMovie();

  Future<List<MovieEntity>> getPopularMovie();

  Future<List<MovieEntity>> getTopRatedMovie();

  Future<MovieVideoEntity> getVideoOfMovie(int id);

  Future<void> saveMovieToMyHistory(int id);
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  HomeUseCaseImpl(this._repo);

  final HomeRepository _repo;

  @override
  Future<List<MovieEntity>> getRecommendedMovie() async {
    return await _repo.getRecommendedMovie();
  }

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

  @override
  Future<MovieVideoEntity> getVideoOfMovie(int id) async {
    return await _repo.getVideoOfMovie(id);
  }

  @override
  Future<void> saveMovieToMyHistory(int id) async {
    await _repo.saveMovieToMyHistory(id);
  }
}

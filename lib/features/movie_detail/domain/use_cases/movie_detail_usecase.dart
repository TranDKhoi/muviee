import 'package:injectable/injectable.dart';
import 'package:muviee/features/movie_detail/domain/entities/actor/actor_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/gallery_entity.dart';
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart';

import '../../../../common/models/movie_video_entity.dart';
import '../entities/review/review_search_entity.dart';

abstract class MovieDetailUseCase {
  Future<List<ActorEntity>> getActorOfMovie(int id);

  Future<GalleryEntity> getGalleryOfMovie(int id);

  Future<ReviewSearchEntity> getReviewOfMovie(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);
}

@Injectable(as: MovieDetailUseCase)
class MovieDetailUseCaseImpl implements MovieDetailUseCase {
  MovieDetailUseCaseImpl(this._repo);

  final MovieDetailRepository _repo;

  @override
  Future<List<ActorEntity>> getActorOfMovie(int id) async {
    return await _repo.getActorOfMovie(id);
  }

  @override
  Future<GalleryEntity> getGalleryOfMovie(int id) async {
    return await _repo.getGalleryOfMovie(id);
  }

  @override
  Future<ReviewSearchEntity> getReviewOfMovie(int id) async {
    return await _repo.getReviewOfMovie(id);
  }

  @override
  Future<MovieVideoEntity> getVideoOfMovie(int id) async {
    return await _repo.getVideoOfMovie(id);
  }
}

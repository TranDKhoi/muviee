import 'package:injectable/injectable.dart';
import 'package:muviee/features/movie_detail/domain/entities/actor/actor_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/gallery_entity.dart';
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart';

import '../entities/review/review_search_entity.dart';

abstract class MovieDetailUseCase {
  Future<List<ActorEntity>> getActorOfMovie(int id);

  Future<GalleryEntity> getGalleryOfMovie(int id);

  Future<ReviewSearchEntity> getReviewOfMovie(int id);
}

@Injectable(as: MovieDetailUseCase)
class MovieDetailUseCaseImpl implements MovieDetailUseCase {
  MovieDetailUseCaseImpl(this._repo);

  final MovieDetailRepository _repo;

  @override
  Future<List<ActorEntity>> getActorOfMovie(int id) {
    // TODO: implement getActorOfMovie
    throw UnimplementedError();
  }

  @override
  Future<GalleryEntity> getGalleryOfMovie(int id) {
    // TODO: implement getGalleryOfMovie
    throw UnimplementedError();
  }

  @override
  Future<ReviewSearchEntity> getReviewOfMovie(int id) {
    // TODO: implement getReviewOfMovie
    throw UnimplementedError();
  }
}

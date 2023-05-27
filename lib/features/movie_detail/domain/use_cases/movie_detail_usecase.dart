import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_entity.dart';
import 'package:muviee/exceptions/app_exception.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/gallery_entity.dart';
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../common/entity/actor/actor_entity.dart';
import '../../../../common/entity/movie_video_entity.dart';
import '../../../../config/langs/r.dart';
import '../review/review_search_entity.dart';

abstract class MovieDetailUseCase {
  Future<List<MovieEntity>> getSimilarMovie(int id);

  Future<List<ActorEntity>> getActorOfMovie(int id);

  Future<GalleryEntity> getGalleryOfMovie(int id);

  Future<ReviewSearchEntity> getReviewOfMovie(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);

  Future<void> submitReview(int id, String content, double rating);

  Future<void> likeMovie(int id);

  Future<void> unLikeMovie(int id);

  Future<void> saveMovieToMyHistory(int id);
}

@Injectable(as: MovieDetailUseCase)
class MovieDetailUseCaseImpl implements MovieDetailUseCase {
  MovieDetailUseCaseImpl(this._repo);

  final MovieDetailRepository _repo;

  @override
  Future<List<MovieEntity>> getSimilarMovie(int id) async {
    return await _repo.getSimilarMovie(id);
  }

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

  @override
  Future<void> likeMovie(int id) async {
    await _repo.likeMovie(id);
  }

  @override
  Future<void> unLikeMovie(int id) async {
    await _repo.unLikeMovie(id);
  }

  @override
  Future<void> saveMovieToMyHistory(int id) async {
    await _repo.saveMovieToMyHistory(id);
  }

  @override
  Future<void> submitReview(int id, String content, double rating) async {
    if (content.trim().isEmpty) {
      throw InvalidField(R.pleaseFillAllTheFields.translate);
    }
    await _repo.submitReview(id, content.trim(), rating);
  }
}

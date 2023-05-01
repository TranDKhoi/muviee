import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_entity.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../common/entity/movie_video_entity.dart';
import '../../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../../config/langs/r.dart';
import '../../../../exceptions/app_exception.dart';
import '../repositories/review_repository.dart';

abstract class ReviewUseCase {
  Future<MyReviewSearchEntity> getMyReview();

  Future<void> deleteMyReview(String id);

  Future<void> editReview(String id, String content, double rating);

  Future<void> saveMovieToMyHistory(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);
}

@Injectable(as: ReviewUseCase)
class ReviewUseCaseImpl implements ReviewUseCase {
  ReviewUseCaseImpl(this._repo);

  final ReviewRepository _repo;

  @override
  Future<MyReviewSearchEntity> getMyReview() {
    return _repo.getMyReview();
  }

  @override
  Future<void> deleteMyReview(String id) async {
    await _repo.deleteMyReview(id);
  }

  @override
  Future<void> editReview(String id, String content, double rating) async {
    if (content.trim().isEmpty) {
      throw InvalidField(R.pleaseFillAllTheFields.translate);
    }
    await _repo.editReview(id, content.trim(), rating);
  }

  @override
  Future<void> saveMovieToMyHistory(int id) async {
    await _repo.saveMovieToMyHistory(id);
  }

  @override
  Future<MovieVideoEntity> getVideoOfMovie(int id) async {
    return await _repo.getVideoOfMovie(id);
  }
}

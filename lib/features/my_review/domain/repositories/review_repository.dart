import 'package:muviee/common/entity/movie_entity.dart';

import '../../../../common/entity/movie_video_entity.dart';
import '../../../../common/entity/my_review/my_review_search_entity.dart';

abstract class ReviewRepository {
  Future<MyReviewSearchEntity> getMyReview();

  Future<void> deleteMyReview(String id);

  Future<void> editReview(String id, String content, double rating);

  Future<void> saveMovieToMyHistory(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);
}

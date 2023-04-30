import '../../../../common/entity/review/review_search_entity.dart';

abstract class ReviewRepository {
  Future<ReviewSearchEntity> getMyReview();
}

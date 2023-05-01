import 'package:muviee/common/entity/movie_search_entity.dart';

import '../../../../common/entity/my_review/my_review_search_entity.dart';

abstract class ProfileRepository {
  Future<void> logOut();
  Future<MovieSearchEntity> getMyFavorite();
  Future<MyReviewSearchEntity> getMyReview();
}

import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';
import 'package:muviee/common/models/my_review/my_review_model.dart';

class ReviewService extends BaseService {
  static final ins = ReviewService._();

  ReviewService._();

  Future<Response> getMyReview() async {
    return await dio.get(BaseService.USER_REVIEW);
  }

  Future<Response> deleteMyReview(String id) async {
    return await dio.delete("${BaseService.USER_REVIEW}/$id");
  }

  Future<Response> editReview(MyReviewModel model) async {
    return await dio.put(BaseService.USER_REVIEW, data: model);
  }

  Future<Response> getVideoOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/videos");
  }

  Future<Response> saveMovieToMyHistory(int id) async {
    return await dio.post(BaseService.USER_HISTORY, data: id);
  }
}

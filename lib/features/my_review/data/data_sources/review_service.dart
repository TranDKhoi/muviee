import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ReviewService extends BaseService {
  static final ins = ReviewService._();

  ReviewService._();

  Future<Response> getMyReview() async {
    return await dio.get(BaseService.USER_REVIEW);
  }

  Future<Response> deleteMyReview(String id) async {
    return await dio.get("${BaseService.USER_REVIEW}/$id");
  }
}

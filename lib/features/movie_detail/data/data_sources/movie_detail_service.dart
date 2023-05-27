import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';
import 'package:muviee/common/models/my_review/my_review_model.dart';

class MovieDetailService extends BaseService {
  static final ins = MovieDetailService._();

  MovieDetailService._();

  Future<Response> getSimilarMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/Recommendation");
  }

  Future<Response> getActorOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/actors");
  }

  Future<Response> getGalleryOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/images");
  }

  Future<Response> getReviewOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/review");
  }

  Future<Response> getVideoOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/videos");
  }

  Future<Response> likeMovie(int id) async {
    return await dio.post(BaseService.USER_FAVORITE, data: id);
  }

  Future<Response> unLikeMovie(int id) async {
    return await dio.delete("${BaseService.USER_FAVORITE}/$id");
  }

  Future<Response> saveMovieToMyHistory(int id) async {
    return await dio.post(BaseService.USER_HISTORY, data: id);
  }

  Future<Response> submitReview(MyReviewModel model) async {
    return await dio.post(BaseService.USER_REVIEW, data: model);
  }
}

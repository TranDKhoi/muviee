import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class MovieDetailService extends BaseService {
  static final ins = MovieDetailService._();

  MovieDetailService._();

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
    return await dio.post("${BaseService.USER_FAVORITE}/$id");
  }

  Future<Response> unLikeMovie(int id) async {
    return await dio.delete("${BaseService.USER_FAVORITE}/$id");
  }

  Future<Response> saveMovieToMyHistory(int id) async {
    return await dio.post("${BaseService.USER_HISTORY}/$id");
  }
}

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
}

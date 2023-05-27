import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class HomeService extends BaseService {
  static final ins = HomeService._();

  HomeService._();

  Future<Response> getRecommendedMovie() async {
    return await dio.get(BaseService.GET_RECOMMEND_MOVIE);
  }

  Future<Response> getLatestMovie() async {
    return await dio.get(BaseService.GET_LATEST_MOVIE);
  }

  Future<Response> getPopularMovie() async {
    return await dio.get(BaseService.GET_POPULAR_MOVIE);
  }

  Future<Response> getTopRatedMovie() async {
    return await dio.get(BaseService.GET_TOP_MOVIE);
  }

  Future<Response> getVideoOfMovie(int id) async {
    return await dio.get("${BaseService.BASE_PATH}/Movie/$id/videos");
  }

  Future<Response> saveMovieToMyHistory(int id) async {
    return await dio.post(BaseService.USER_HISTORY, data: id);
  }
}

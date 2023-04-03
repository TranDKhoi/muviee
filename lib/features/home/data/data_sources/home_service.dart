import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class HomeService extends BaseService {
  static final ins = HomeService._();

  HomeService._();

  Future<Response> getLatestMovie() async {
    return await dio.get(BaseService.GET_LATEST_MOVIE);
  }

  Future<Response> getPopularMovie() async {
    return await dio.get(BaseService.GET_POPULAR_MOVIE);
  }

  Future<Response> getTopRatedMovie() async {
    return await dio.get(BaseService.GET_TOP_MOVIE);
  }
}

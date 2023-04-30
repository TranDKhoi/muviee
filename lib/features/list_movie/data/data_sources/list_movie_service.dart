import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ListMovieService extends BaseService {
  static final ins = ListMovieService._();

  ListMovieService._();

  Future<Response> getMovie(int page, String type) async {
    return await dio.get("${BaseService.GET_MOVIE}/$type", queryParameters: {"page": page});
  }
}

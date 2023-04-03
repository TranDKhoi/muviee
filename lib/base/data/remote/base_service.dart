import 'package:dio/dio.dart';
import 'package:muviee/common/global_data.dart';

class BaseService {
  static const String BASE_PATH = "https://movie-rs.azurewebsites.net/api/";

  //api route
  static const String LOGIN_PATH = "Auth/login";
  static const String GET_USER = "User";
  static const String GET_POPULAR_MOVIE = "Movie/popular";
  static const String GET_LATEST_MOVIE = "Movie/now_playing";
  static const String GET_TOP_MOVIE = "Movie/top_rated";

  late Dio dio;

  //CONSTRUCTOR
  BaseService() {
    dio = Dio(
      BaseOptions(
          baseUrl: BASE_PATH,
          connectTimeout: const Duration(milliseconds: 10000),
          receiveTimeout: const Duration(milliseconds: 10000),
          responseType: ResponseType.json,
          contentType: Headers.jsonContentType,
          headers: {
            "authorization": "Bearer ${GlobalData.ins.localToken}",
          }),
    );
  }
}

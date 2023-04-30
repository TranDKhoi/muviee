import 'package:dio/dio.dart';

import '../../../common/global_data.dart';

class BaseService {
  static const String BASE_PATH = "https://movie-rs.azurewebsites.net/api/";

  //api route
  static const String LOGIN_PATH = "Auth/login";
  static const String REGISTER_PATH = "Auth/register";
  static const String VERIFY_SIGNUP_PATH = "Auth/verify-account";
  static const String FORGOT_PASS_PATH = "Auth/lost-account";
  static const String RESET_PASS_PATH = "Auth/reset-account";
  static const String GET_USER = "User";
  static const String USER_FAVORITE = "User/favourite";
  static const String USER_REVIEW = "User/review";
  static const String USER_HISTORY = "User/histories";
  static const String GET_MOVIE = "Movie";
  static const String GET_POPULAR_MOVIE = "Movie/popular";
  static const String GET_LATEST_MOVIE = "Movie/now_playing";
  static const String GET_TOP_MOVIE = "Movie/top_rated";
  static const String SEARCH_MOVIE = "Search/movie";
  static const String SEARCH_ACTOR = "Search/person";

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
        headers: GlobalData.ins.localToken != null
            ? {
                "authorization": "Bearer ${GlobalData.ins.localToken}",
              }
            : null,
      ),
    );
  }
}

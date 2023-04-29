import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class SearchService extends BaseService {
  static final ins = SearchService._();

  SearchService._();

  Future<Response> searchMovie(String s, Map<String, dynamic> filter) async {
    return await dio.get("${BaseService.SEARCH_MOVIE}/${filter["query"]}", queryParameters: filter);
  }

  Future<Response> searchActor(String s, Map<String, dynamic> filter) async {
    return await dio.get("${BaseService.SEARCH_ACTOR}/${filter["query"]}", queryParameters: filter);
  }
}

import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ProfileService extends BaseService {
  static final ins = ProfileService._();

  ProfileService._();

  Future<Response> getMyFavorite() async {
    return await dio.get(BaseService.USER_FAVORITE);
  }

  Future<Response> getMyReview() async {
    return await dio.get(BaseService.USER_REVIEW);
  }
}

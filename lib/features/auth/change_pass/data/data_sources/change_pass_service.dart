import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ChangePassService extends BaseService {
  static final ins = ChangePassService._();

  ChangePassService._();

  Future<Response> changePass(String pass, String token) async {
    return await dio.post(BaseService.RESET_PASS_PATH, data: {"password": pass, "token": token});
  }
}

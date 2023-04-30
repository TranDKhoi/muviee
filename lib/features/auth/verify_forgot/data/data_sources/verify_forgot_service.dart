import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class VerifyForgotService extends BaseService {
  static final ins = VerifyForgotService._();

  VerifyForgotService._();

  Future<Response> verifyCode(String email, String code) async {
    return await dio.post(BaseService.FORGOT_PASS_PATH, data: {"email": email, "code": code});
  }
}

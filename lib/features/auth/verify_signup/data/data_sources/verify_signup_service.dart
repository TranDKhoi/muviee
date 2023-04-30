import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class VerifySignupService extends BaseService {
  static final ins = VerifySignupService._();

  VerifySignupService._();

  Future<Response> verifyCode(String email, String code) async {
    return await dio.post(BaseService.VERIFY_SIGNUP_PATH, data: {"email": email, "code": code});
  }
}

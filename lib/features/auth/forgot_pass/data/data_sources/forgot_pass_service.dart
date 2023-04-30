import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ForgotPassService extends BaseService {
  static final ins = ForgotPassService._();

  ForgotPassService._();

  Future<Response> confirmForgotPass(String email) async {
    return await dio.post(BaseService.FORGOT_PASS_PATH, data: {"email": email});
  }
}

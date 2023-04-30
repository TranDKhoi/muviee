import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';
import 'package:muviee/features/auth/sign_up/data/models/signup_model.dart';

class SignupService extends BaseService {
  static final ins = SignupService._();

  SignupService._();

  Future<Response> confirmSignup(SignupModel model) async {
    return await dio.post(BaseService.REGISTER_PATH, data: model);
  }
}

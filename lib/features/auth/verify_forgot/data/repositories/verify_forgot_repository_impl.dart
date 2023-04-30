import 'package:injectable/injectable.dart';
import 'package:muviee/features/auth/verify_forgot/domain/repositories/verify_forgot_repository.dart';

import '../data_sources/verify_forgot_service.dart';

@Injectable(as: VerifyForgotRepository)
class VerifyForgotRepositoryImpl implements VerifyForgotRepository {
  @override
  Future<String> verifyCode(String email, String code) async {
    var res = await VerifyForgotService.ins.verifyCode(email, code);
    var tempToken = res.data["token"];
    return tempToken;
  }
}

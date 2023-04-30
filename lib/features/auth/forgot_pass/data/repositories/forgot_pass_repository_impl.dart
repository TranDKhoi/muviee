import 'package:injectable/injectable.dart';
import 'package:muviee/features/auth/forgot_pass/domain/repositories/forgot_pass_repository.dart';

import '../data_sources/forgot_pass_service.dart';

@Injectable(as: ForgotPassRepository)
class ForgotPassRepositoryImpl implements ForgotPassRepository {
  @override
  Future<void> confirmForgotPass(String email) async {
    await ForgotPassService.ins.confirmForgotPass(email);
  }
}

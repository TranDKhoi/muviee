import 'package:injectable/injectable.dart';

import '../repositories/verify_forgot_repository.dart';

abstract class VerifyForgotUseCase {
  Future<String> verifyCode(String email, String code);
}

@Injectable(as: VerifyForgotUseCase)
class VerifyForgotUseCaseImpl implements VerifyForgotUseCase {
  VerifyForgotUseCaseImpl(this._repo);

  final VerifyForgotRepository _repo;

  @override
  Future<String> verifyCode(String email, String code) {
    return _repo.verifyCode(email, code);
  }
}

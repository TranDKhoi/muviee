import 'package:injectable/injectable.dart';

import '../../../../../common/entity/user_entity.dart';
import '../repositories/verify_sinup_repository.dart';

abstract class VerifySignupUseCase {
  Future<UserEntity> verifyCode(String email, String code);
}

@Injectable(as: VerifySignupUseCase)
class VerifySignupUseCaseImpl implements VerifySignupUseCase {
  VerifySignupUseCaseImpl(this._repo);

  final VerifySignupRepository _repo;

  @override
  Future<UserEntity> verifyCode(String email, String code) {
    return _repo.verifyCode(email, code);
  }
}

import '../../../../../common/entity/user_entity.dart';

abstract class VerifySignupRepository {
  Future<UserEntity> verifyCode(String email, String code);
}

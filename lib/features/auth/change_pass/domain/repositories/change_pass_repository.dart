import '../../../../../common/entity/user_entity.dart';

abstract class ChangePassRepository {
  Future<UserEntity> changePass(String pass, String token);
}

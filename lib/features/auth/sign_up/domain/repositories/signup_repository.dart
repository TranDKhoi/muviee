import 'package:muviee/features/auth/sign_up/domain/entities/signup_entity.dart';

abstract class SignupRepository {
  Future<void> confirmSignup(SignupEntity data);
}

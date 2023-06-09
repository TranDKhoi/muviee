import 'package:injectable/injectable.dart';

import '../../../../../common/entity/user_entity.dart';
import '../../../../../exceptions/app_exception.dart';
import '../repositories/login_repository.dart';

abstract class LoginUseCase {
  Future<UserEntity> login(String email, String password);
}

@LazySingleton(as: LoginUseCase)
class LoginUseCaseImpl implements LoginUseCase {
  final LoginRepository _loginRepository;

  LoginUseCaseImpl(this._loginRepository);

  @override
  Future<UserEntity> login(String email, String password) async {
    if (email.isEmpty) {
      throw InvalidEmail("Invalid email");
    }
    if (password.length < 5) {
      throw InvalidPassword("Password must at least 6 chars");
    }

    return await _loginRepository.login(email, password);
  }
}

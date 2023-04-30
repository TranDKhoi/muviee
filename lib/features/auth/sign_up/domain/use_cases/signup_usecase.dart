import 'package:injectable/injectable.dart';
import 'package:muviee/exceptions/app_exception.dart';
import 'package:muviee/features/auth/sign_up/domain/entities/signup_entity.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/validation.dart';

import '../../../../../config/langs/r.dart';
import '../repositories/signup_repository.dart';

abstract class SignupUseCase {
  Future<void> confirmSignup(SignupEntity data);
}

@Injectable(as: SignupUseCase)
class SignupUseCaseImpl implements SignupUseCase {
  SignupUseCaseImpl(this._repo);

  final SignupRepository _repo;

  @override
  Future<void> confirmSignup(SignupEntity data) async {
    if (data.email.isEmpty ||
        data.password.isEmpty ||
        data.rePassword.isEmpty ||
        data.username.isEmpty) {
      throw InvalidField(R.pleaseFillAllTheFields.translate);
    }
    if (!Validation.validEmail(data.email)) {
      throw InvalidEmail(R.invalidEmailAddress.translate);
    }
    if (data.password.length < 6 || data.rePassword.length < 6) {
      throw InvalidPassword(R.passwordMustAtLeast6char.translate);
    }
    if (data.password != data.rePassword) {
      throw InvalidPassword(R.passwordsDoNotMatch.translate);
    }

    await _repo.confirmSignup(data);
  }
}

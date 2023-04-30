import 'package:injectable/injectable.dart';
import 'package:muviee/exceptions/app_exception.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../../common/entity/user_entity.dart';
import '../../../../../config/langs/r.dart';
import '../repositories/change_pass_repository.dart';

abstract class ChangePassUseCase {
  Future<UserEntity> changePass(String pass, String rePass, String token);
}

@Injectable(as: ChangePassUseCase)
class ChangePassUseCaseImpl implements ChangePassUseCase {
  ChangePassUseCaseImpl(this._repo);

  final ChangePassRepository _repo;

  @override
  Future<UserEntity> changePass(String pass, String rePass, String token) async {
    if (pass.isEmpty || rePass.isEmpty) {
      throw InvalidField(R.pleaseFillAllTheFields.translate);
    }
    if (pass.length < 6 || rePass.length < 6) {
      throw InvalidPassword(R.passwordMustAtLeast6char.translate);
    }
    if (pass != rePass) {
      throw InvalidPassword(R.passwordsDoNotMatch);
    }
    return await _repo.changePass(pass, token);
  }
}

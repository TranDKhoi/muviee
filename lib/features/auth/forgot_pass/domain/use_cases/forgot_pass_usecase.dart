import 'package:injectable/injectable.dart';
import 'package:muviee/exceptions/app_exception.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/validation.dart';

import '../../../../../config/langs/r.dart';
import '../repositories/forgot_pass_repository.dart';

abstract class ForgotPassUseCase {
  Future<void> confirmForgotPass(String email);
}

@Injectable(as: ForgotPassUseCase)
class ForgotPassUseCaseImpl implements ForgotPassUseCase {
  ForgotPassUseCaseImpl(this._repo);

  final ForgotPassRepository _repo;

  @override
  Future<void> confirmForgotPass(String email) async {
    if (email.isEmpty || !Validation.validEmail(email)) {
      throw InvalidEmail(R.invalidEmailAddress.translate);
    }
    await _repo.confirmForgotPass(email);
  }
}

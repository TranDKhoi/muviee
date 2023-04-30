import 'package:injectable/injectable.dart';
import 'package:muviee/features/auth/sign_up/domain/entities/signup_entity.dart';

import '../../domain/repositories/signup_repository.dart';
import '../data_sources/signup_service.dart';
import '../models/signup_model.dart';

@Injectable(as: SignupRepository)
class SignupRepositoryImpl implements SignupRepository {
  @override
  Future<void> confirmSignup(SignupEntity data) async {
    SignupModel dataModel =
        SignupModel(username: data.username, password: data.password, email: data.email);

    await SignupService.ins.confirmSignup(dataModel);
  }
}

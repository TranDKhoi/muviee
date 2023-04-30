import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/country_entity.dart';
import 'package:muviee/common/entity/user_entity.dart';
import 'package:muviee/common/models/user_model.dart';
import 'package:muviee/features/auth/verify_signup/domain/repositories/verify_sinup_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../../services/shared_service.dart';
import '../data_sources/verify_signup_service.dart';

@Injectable(as: VerifySignupRepository)
class VerifySignupRepositoryImpl implements VerifySignupRepository {
  @override
  Future<UserEntity> verifyCode(String email, String code) async {
    var res = await VerifySignupService.ins.verifyCode(email, code);

    UserModel userModel = UserModel.fromJson(res.serverData);
    UserEntity entity = UserEntity(
      id: userModel.id ?? -1,
      username: userModel.username ?? "username",
      email: userModel.email ?? "email",
      country: CountryEntity(
        name: userModel.country?.name ?? "",
        id: userModel.country?.id ?? -1,
        code: userModel.country?.code ?? "",
        image: userModel.country?.image ?? "",
      ),
      token: res.data["token"] ?? "",
    );

    SharedService().setToken(entity.token);

    return entity;
  }
}

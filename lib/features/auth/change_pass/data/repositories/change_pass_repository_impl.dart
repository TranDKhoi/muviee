import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/country_entity.dart';
import 'package:muviee/common/entity/user_entity.dart';
import 'package:muviee/common/models/user_model.dart';
import 'package:muviee/features/auth/change_pass/domain/repositories/change_pass_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../../services/shared_service.dart';
import '../data_sources/change_pass_service.dart';

@Injectable(as: ChangePassRepository)
class ChangePassRepositoryImpl implements ChangePassRepository {
  @override
  Future<UserEntity> changePass(String pass, String token) async {
    var res = await ChangePassService.ins.changePass(pass, token);
    UserModel model = UserModel.fromJson(res.serverData);
    UserEntity entity = UserEntity(
      id: model.id ?? -1,
      username: model.username ?? "",
      email: model.email ?? "",
      country: CountryEntity(
          image: model.country?.image ?? "",
          code: model.country?.code ?? "",
          id: model.country?.id ?? -1,
          name: model.country?.name ?? ""),
      token: res.data["token"] ?? "",
    );

    SharedService().setToken(entity.token);
    return entity;
  }
}

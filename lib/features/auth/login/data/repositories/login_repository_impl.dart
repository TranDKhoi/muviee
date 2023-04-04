import 'package:injectable/injectable.dart';
import 'package:muviee/services/shared_service.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../../common/models/user_entity.dart';
import '../../domain/repositories/login_repository.dart';
import '../data_sources/remote/login_service.dart';
import '../models/user_model.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl();

  @override
  Future<UserEntity> login(String email, String password) async {
    var res = await LoginService.ins.login(email, password);

    UserModel userModel = UserModel.fromJson(res.serverData);
    UserEntity userEntity = UserEntity(
      id: userModel.id ?? -1,
      username: userModel.username ?? "null",
      email: userModel.email ?? "null",
      country: userModel.country ?? "null",
      token: res.data["token"],
    );

    SharedService().setToken(userEntity.token);

    return userEntity;
  }
}

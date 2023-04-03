import 'package:flutter/material.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/auth/login/data/data_sources/remote/login_service.dart';
import 'package:muviee/features/auth/login/data/models/user_model.dart';
import 'package:muviee/features/auth/login/domain/entities/user_entity.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import 'features/app/app.dart';
import 'services/shared_service.dart';

void main() async {
  await _initialize.call();
  runApp(const MyApp());
}

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedService.init();
  await injectorInit();
  await _getUserData();
}

Future<void> _getUserData() async {
  var localToken = SharedService().getToken();

  if (localToken == null) return;

  GlobalData.ins.localToken = localToken;
  var res = await LoginService.ins.getUser();
  if (res.isSuccess) {
    var userModel = UserModel.fromJson(res.serverData);
    GlobalData.ins.currentUser = UserEntity(
      id: userModel.id ?? -1,
      username: userModel.username ?? "null",
      email: userModel.email ?? "null",
      country: userModel.country ?? "null",
      token: localToken,
    );
  }
}

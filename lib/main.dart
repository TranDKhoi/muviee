import 'dart:developer';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muviee/common/entity/country_entity.dart';
import 'package:muviee/common/entity/user_entity.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/common/models/user_model.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/auth/login/data/data_sources/remote/login_service.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';
import 'package:muviee/utils/language_util.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'config/constants.dart';
import 'features/app/app.dart';
import 'services/shared_service.dart';

void main() async {
  await _initialize.call();
  runApp(const MyApp());
}

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  timeago.setLocaleMessages('vi', timeago.ViMessages());
  timeago.setLocaleMessages('ja', timeago.JaMessages());
  timeago.setLocaleMessages('zh', timeago.ZhCnMessages());
  timeago.setLocaleMessages('es', timeago.EsMessages());
  timeago.setLocaleMessages('de', timeago.DeMessages());
  timeago.setLocaleMessages('ar', timeago.ArMessages());
  timeago.setLocaleMessages('hi', timeago.HiMessages());

  AppConstant.downloadDir =
      await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS);

  await SharedService.init();
  await injectorInit();
  await _getUserData();
  _getAppConfig();
}

void _getAppConfig() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  //get language
  String langId = SharedService().getCurrentLang() ?? "en";
  try {
    LanguageUtil.ins.changeLanguage(langId);
    GlobalData.ins.currentLang = LanguageUtil.ins.languages.where((e) => e.id == langId).first;
  } catch (_) {
    GlobalData.ins.currentLang = LanguageUtil.ins.languages.first;
  }

  LanguageUtil.ins.changeLanguage(GlobalData.ins.currentLang.id);

  //get theme
  GlobalData.ins.isDark = SharedService().getCurrentTheme() ?? true;
}

Future<void> _getUserData() async {
  try {
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
        country: CountryEntity(
            id: userModel.country?.id ?? -1,
            name: userModel.country?.name ?? "null",
            code: userModel.country?.code ?? "null",
            image: userModel.country?.image ?? "null"),
        token: localToken,
      );
    }
  } catch (e) {
    log(e.toString());
  }
}

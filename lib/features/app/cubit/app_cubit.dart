import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/services/shared_service.dart';
import 'package:muviee/utils/language_util.dart';

import '../../../common/global_data.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(AppInitial(langId: GlobalData.ins.currentLang.id, isDark: GlobalData.ins.isDark));

  void changeLanguage(String langId) {
    LanguageUtil.ins.changeLanguage(langId);
    GlobalData.ins.currentLang =
        LanguageUtil.ins.languages.where((element) => element.id == langId).first;
    emit((state as AppInitial).copyWith(langId: langId));
  }

  void changeTheme(bool isDark) {
    GlobalData.ins.isDark = isDark;
    SharedService().setCurrentTheme(isDark);
    emit((state as AppInitial).copyWith(isDark: isDark));
  }
}

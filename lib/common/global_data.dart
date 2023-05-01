import 'package:muviee/common/entity/movie_video_entity.dart';
import 'package:muviee/common/entity/user_entity.dart';
import 'package:muviee/utils/language_util.dart';

class GlobalData {
  static final ins = GlobalData._();

  GlobalData._();

  UserEntity? currentUser;
  int? currentMovieId;
  String? localToken;
  late LanguageModel currentLang;
  late bool isDark;
}

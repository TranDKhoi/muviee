import 'dart:io';

import 'package:muviee/config/constants.dart';

class FileUtil {
  static Future<String> getDownloadDirectory() async {
    await _createFolderIfNotExist(AppConstant.MOVIE_PATH);
    return "${AppConstant.MOVIE_PATH}${DateTime.now().toString().replaceAll(" ", "_").replaceAll(":", "_")}";
  }

  static Future<void> _createFolderIfNotExist(String saveFolderPath) async {
    final bool isExists = Directory(saveFolderPath).existsSync();

    if (!isExists) {
      Directory(saveFolderPath).createSync();
    }
  }
}

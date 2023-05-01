import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:muviee/utils/file_util.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadUtil {
  static Future<void> downloadVideo(
    String url,
    CancelToken cancelToken,
    Function(int received, int total) onProgress,
    VoidCallback onError,
  ) async {
    var res1 = await Permission.storage.request();
    var res2 = await Permission.manageExternalStorage.request();

    if (res1 != PermissionStatus.granted || res2 != PermissionStatus.granted) {
      onError;
      return;
    }

    try {
      var savePath = await FileUtil.getDownloadDirectory();
      final dio = Dio();
      dio.download(
        url,
        savePath,
        cancelToken: cancelToken,
        onReceiveProgress: onProgress,
      );
    } on DioError catch (e) {
      onError;
    } catch (e) {
      print(e);
      onError;
    }
  }
}

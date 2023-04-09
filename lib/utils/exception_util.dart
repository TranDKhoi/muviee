import 'package:dio/dio.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../exceptions/app_exception.dart';
import 'alert_util.dart';

class ExceptionUtil {
  static void handle(e) {
    AlertUtil.hideLoading();
    if (e is DioError) {
      // error from api
      switch (e.type) {
        case DioErrorType.badResponse:
          AlertUtil.showToast(e.errorMessage ?? "Something went wrong");
          break;
        case DioErrorType.connectionTimeout:
          AlertUtil.showToast(e.errorMessage ?? "Something went wrong");
          break;
        case DioErrorType.receiveTimeout:
          AlertUtil.showToast(e.errorMessage ?? "Something went wrong");
          break;
        case DioErrorType.unknown:
          AlertUtil.showToast(e.error.toString());
          break;
        default:
          AlertUtil.showToast(e.error.toString());
          break;
      }
    } else if (e is AppException) {
      // error from UI
      if (e.message != null) {
        AlertUtil.showToast(e.message!);
      }
    } else {
      //maybe server error
      if (e.message != null) {
        AlertUtil.showToast(e.message!);
      }
    }
  }
}

import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class HistoryService extends BaseService {
  static final ins = HistoryService._();

  HistoryService._();

  Future<Response> getMyHistory() async {
    return await dio.get(BaseService.USER_HISTORY);
  }
}

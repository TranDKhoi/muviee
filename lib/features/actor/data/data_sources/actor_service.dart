import 'package:dio/dio.dart';
import 'package:muviee/base/data/remote/base_service.dart';

class ActorService extends BaseService {
  static final ins = ActorService._();

  ActorService._();

  Future<Response> getMovieOfActor(int actorId) async {
    return await dio.get("${BaseService.BASE_PATH}/Person/$actorId/movies?take=10");
  }
}

import 'package:injectable/injectable.dart';

import '../../../../common/entity/movie_entity.dart';
import '../repositories/hisory_repository.dart';

abstract class HistoryUseCase {
  Future<List<MovieEntity>> getMyHistory();
  Future<void> deleteMovie(int id);
}

@Injectable(as: HistoryUseCase)
class HistoryUseCaseImpl implements HistoryUseCase {
  HistoryUseCaseImpl(this._repo);

  final HistoryRepository _repo;

  @override
  Future<List<MovieEntity>> getMyHistory() async {
    return await _repo.getMyHistory();
  }

  @override
  Future<void> deleteMovie(int id) async {
    return await _repo.deleteMovie(id);
  }
}

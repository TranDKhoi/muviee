import '../../../../common/entity/movie_entity.dart';

abstract class HistoryRepository {
  Future<List<MovieEntity>> getMyHistory();
  Future<void> deleteMovie(int id);
}

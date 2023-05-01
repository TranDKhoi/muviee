import 'package:injectable/injectable.dart';
import 'package:muviee/common/models/movie_model.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/genre_entity.dart';
import '../../../../common/entity/movie_entity.dart';
import '../../domain/repositories/hisory_repository.dart';
import '../data_sources/history_service.dart';

@Injectable(as: HistoryRepository)
class HistoryRepositoryImpl implements HistoryRepository {
  @override
  Future<List<MovieEntity>> getMyHistory() async {
    var res = await HistoryService.ins.getMyHistory();

    var data = res.serverData;

    List<MovieModel> models =
        List.from(data["results"].map((movie) => MovieModel.fromJson(movie["movie"])));

    List<MovieEntity> movieEntities = [];

    for (var item in models) {
      movieEntities.add(
        MovieEntity(
          id: item.id ?? -1,
          backdropPath: item.backdropPath ?? "null",
          budget: item.budget ?? -1,
          genres: List.from(
            item.genres?.map(
                  (e) => GenreEntity(id: e.id ?? -1, name: e.name ?? "null"),
                ) ??
                [],
          ),
          imdbId: item.imdbId ?? "null",
          originalTitle: item.originalTitle ?? "null",
          title: item.title ?? "null",
          overview: item.overview ?? "null",
          posterPath: item.posterPath ?? "null",
          releaseDate: item.releaseDate ?? "null",
          revenue: item.revenue ?? -1,
          runtime: item.runtime ?? -1,
          voteAverage: item.voteAverage ?? -1,
          voteCount: item.voteCount ?? -1,
        ),
      );
    }

    return movieEntities;
  }

  @override
  Future<void> deleteMovie(int id) async {
    await HistoryService.ins.deleteMovie(id);
  }
}

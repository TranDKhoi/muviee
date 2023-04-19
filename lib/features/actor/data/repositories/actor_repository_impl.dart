import 'package:injectable/injectable.dart';

import 'package:muviee/common/models/movie_model.dart';
import 'package:muviee/features/actor/data/data_sources/actor_service.dart';
import 'package:muviee/features/actor/domain/repositories/actor_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/genre_entity.dart';
import '../../../../common/entity/movie_entity.dart';

@Injectable(as: ActorRepository)
class ActorRepositoryImpl implements ActorRepository {
  @override
  Future<List<MovieEntity>> getMovieOfActor(int id) async {
    var res = await ActorService.ins.getMovieOfActor(id);

    List<MovieModel> movieModels =
        List.from(res.serverData["cast"].map((movie) => MovieModel.fromJson(movie["movie"])));

    List<MovieEntity> movieEntities = [];

    for (var item in movieModels) {
      movieEntities.add(
        MovieEntity(
          id: id,
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
}

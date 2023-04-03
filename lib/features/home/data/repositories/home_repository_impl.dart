import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/models/movie_entity.dart';
import 'package:muviee/features/home/data/data_sources/home_service.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/models/genre_entity.dart';
import '../../../../common/models/movie_model.dart';
import '../../domain/repositories/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<MovieEntity>> getLatestMovie() async {
    var res = await HomeService.ins.getLatestMovie();

    return _mapData(res);
  }

  @override
  Future<List<MovieEntity>> getPopularMovie() async {
    var res = await HomeService.ins.getPopularMovie();

    return _mapData(res);
  }

  @override
  Future<List<MovieEntity>> getTopRatedMovie() async {
    var res = await HomeService.ins.getTopRatedMovie();

    return _mapData(res);
  }

  List<MovieEntity> _mapData(Response res) {
    List<MovieModel> models =
        List.from(res.serverData["results"].map((e) => MovieModel.fromJson(e)));

    List<MovieEntity> entities = [];
    for (var item in models) {
      entities.add(MovieEntity(
        id: item.id ?? -1,
        backdropPath: item.backdropPath ?? "",
        budget: item.budget ?? -1,
        genres: item.genres
                ?.map((e) => GenreEntity(id: e.id ?? -1, name: e.name ?? ""))
                .toList() ??
            [],
        imdbId: item.imdbId ?? "",
        originalTitle: item.originalTitle ?? "",
        title: item.title ?? "",
        overview: item.overview ?? "",
        posterPath: item.posterPath ?? "",
        releaseDate: item.releaseDate ?? "",
        revenue: item.revenue ?? -1,
        runtime: item.runtime ?? -1,
        voteAverage: item.voteAverage ?? 0.0,
        voteCount: item.voteCount ?? 0,
      ));
    }

    return entities;
  }
}

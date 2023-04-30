import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';
import 'package:muviee/features/list_movie/data/data_sources/list_movie_service.dart';
import 'package:muviee/features/list_movie/domain/repositories/list_movie_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/genre_entity.dart';
import '../../../../common/entity/movie_entity.dart';
import '../../../../common/models/movie_search_model.dart';

@Injectable(as: ListMovieRepository)
class ListMovieRepositoryImpl implements ListMovieRepository {
  @override
  Future<MovieSearchEntity> getMovie(int page, String type) async {
    var res = await ListMovieService.ins.getMovie(page, type);

    MovieSearchModel searchResultModel = MovieSearchModel.fromJson(res.serverData);

    MovieSearchEntity searchEntity = MovieSearchEntity(
        page: searchResultModel.page ?? 0,
        results: List.from(searchResultModel.results
                ?.map((e) => MovieEntity(
                      id: e.id ?? -1,
                      backdropPath: e.backdropPath ?? "",
                      budget: e.budget ?? -1,
                      genres: List.from(e.genres
                              ?.map((e) => GenreEntity(id: e.id ?? -1, name: e.name ?? ""))
                              .toList() ??
                          []),
                      imdbId: e.imdbId ?? "",
                      originalTitle: e.originalTitle ?? "",
                      title: e.title ?? "",
                      overview: e.overview ?? "",
                      posterPath: e.posterPath ?? "",
                      releaseDate: e.releaseDate ?? "",
                      revenue: e.revenue ?? -1,
                      runtime: e.runtime ?? -1,
                      voteAverage: e.voteAverage ?? -1,
                      voteCount: e.voteCount ?? -1,
                    ))
                .toList() ??
            []),
        totalPage: searchResultModel.totalPage ?? 0,
        totalResults: searchResultModel.totalResults ?? 0);
    return searchEntity;
  }
}

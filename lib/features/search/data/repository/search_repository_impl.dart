import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/actor/person_entity.dart';
import 'package:muviee/common/entity/genre_entity.dart';
import 'package:muviee/common/entity/movie_entity.dart';
import 'package:muviee/features/search/data/data_sources/search_service.dart';
import 'package:muviee/features/search/data/model/actor_search_model.dart';
import 'package:muviee/features/search/data/model/movie_search_model.dart';
import 'package:muviee/features/search/domain/entity/actor_search_entity.dart';
import 'package:muviee/features/search/domain/entity/movie_search_entity.dart';
import 'package:muviee/features/search/domain/repository/search_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<ActorSearchEntity> searchActor(String search, Map? filter) async {
    Map<String, dynamic> queries = {};

    if (filter != null) {
      if (filter["region"] != null) {
        queries.addEntries({"region": filter["region"]}.entries);
      }
    }
    queries.addEntries({"query": search}.entries);

    var res = await SearchService.ins.searchActor(search, queries);

    ActorSearchModel searchResultModel = ActorSearchModel.fromJson(res.serverData);

    ActorSearchEntity searchEntity = ActorSearchEntity(
      page: searchResultModel.page ?? 0,
      results: List.from(searchResultModel.results
              ?.map((e) => PersonEntity(
                  biography: e.biography ?? "",
                  birthday: e.birthday ?? "",
                  deathday: e.deathday ?? "",
                  gender: e.gender ?? 0,
                  homepage: e.homepage ?? "",
                  id: e.id ?? -1,
                  imdbId: e.imdbId ?? "",
                  name: e.name ?? "",
                  placeOfBirth: e.placeOfBirth ?? "",
                  popularity: e.popularity ?? 0.0,
                  profilePath: e.profilePath ?? ""))
              .toList() ??
          []),
      totalPage: searchResultModel.totalPage ?? 0,
      totalResults: searchResultModel.totalResults ?? 0,
    );
    return searchEntity;
  }

  @override
  Future<MovieSearchEntity> searchMovie(String search, Map? filter) async {
    Map<String, dynamic> queries = {};

    if (filter != null) {
      if (filter["region"] != null) {
        queries.addEntries({"region": filter["region"]}.entries);
      }
      queries.addEntries({"year": filter["year"]}.entries);
    }

    queries.addEntries({"query": search}.entries);

    var res = await SearchService.ins.searchMovie(search, queries);

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

import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/genre_entity.dart';
import 'package:muviee/common/entity/movie_entity.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';
import 'package:muviee/common/models/movie_search_model.dart';
import 'package:muviee/common/models/my_review/my_review_search_model.dart';
import 'package:muviee/features/profile/data/data_sources/profile_service.dart';
import 'package:muviee/features/profile/domain/repository/profile_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/my_review/my_review_entity.dart';
import '../../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../../common/global_data.dart';
import '../../../../services/shared_service.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<void> logOut() async {
    SharedService().clearToken();
    GlobalData.ins.currentUser = null;
    GlobalData.ins.localToken = null;
  }

  @override
  Future<MovieSearchEntity> getMyFavorite() async {
    var res = await ProfileService.ins.getMyFavorite();

    MovieSearchModel model = MovieSearchModel.fromJson(res.serverData);
    MovieSearchEntity entity = MovieSearchEntity(
      page: model.page ?? 0,
      results: List.from(model.results
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
      totalPage: model.totalPage ?? 0,
      totalResults: model.totalResults ?? 0,
    );
    return entity;
  }

  @override
  Future<MyReviewSearchEntity> getMyReview() async {
    var res = await ProfileService.ins.getMyReview();
    MyReviewSearchModel model = MyReviewSearchModel.fromJson(res.serverData);

    MyReviewSearchEntity entity = MyReviewSearchEntity(
      page: model.page ?? 0,
      totalPages: model.totalPages ?? 0,
      totalResults: model.totalResults ?? 0,
      id: model.id ?? -1,
      results: List.from(model.results
              ?.map((e) => MyReviewEntity(
                  rating: e.rating ?? 0,
                  content: e.content ?? "",
                  id: e.id ?? "",
                  createdAt: e.createdAt ?? DateTime.now(),
                  movie: MovieEntity(
                    id: e.movie?.id ?? -1,
                    backdropPath: e.movie?.backdropPath ?? "",
                    budget: e.movie?.budget ?? -1,
                    genres: e.movie?.genres
                            ?.map((e) => GenreEntity(id: e.id ?? -1, name: e.name ?? ""))
                            .toList() ??
                        [],
                    imdbId: e.movie?.imdbId ?? "",
                    originalTitle: e.movie?.originalTitle ?? "",
                    title: e.movie?.title ?? "",
                    overview: e.movie?.overview ?? "",
                    posterPath: e.movie?.posterPath ?? "",
                    releaseDate: e.movie?.releaseDate ?? "",
                    revenue: e.movie?.revenue ?? -1,
                    runtime: e.movie?.runtime ?? -1,
                    voteAverage: e.movie?.voteAverage ?? 0.0,
                    voteCount: e.movie?.voteCount ?? 0,
                  )))
              .toList() ??
          []),
    );

    return entity;
  }

  @override
  Future<void> changePassword(String old, String newP) async {
    await ProfileService.ins.changePassword(old, newP);
  }
}

import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_video_entity.dart';
import 'package:muviee/common/models/my_review/my_review_model.dart';
import 'package:muviee/features/my_review/data/data_sources/review_service.dart';
import 'package:muviee/features/my_review/domain/repositories/review_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/genre_entity.dart';
import '../../../../common/entity/movie_entity.dart';
import '../../../../common/entity/my_review/my_review_entity.dart';
import '../../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../../common/models/movie_video_model.dart';
import '../../../../common/models/my_review/my_review_search_model.dart';

@Injectable(as: ReviewRepository)
class ReviewRepositoryImpl implements ReviewRepository {
  @override
  Future<MyReviewSearchEntity> getMyReview() async {
    var res = await ReviewService.ins.getMyReview();
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
  Future<void> deleteMyReview(String id) async {
    await ReviewService.ins.deleteMyReview(id);
  }

  @override
  Future<void> editReview(String id, String content, double rating) async {
    MyReviewModel model = MyReviewModel(
      content: content,
      id: id,
      rating: rating,
    );
    await ReviewService.ins.editReview(model);
  }

  @override
  Future<MovieVideoEntity> getVideoOfMovie(int id) async {
    var res = await ReviewService.ins.getVideoOfMovie(id);
    var models = List.from(res.serverData["results"].map((e) => MovieVideoModel.fromJson(e)));
    MovieVideoModel fullVideo = models.last;

    MovieVideoEntity entity = MovieVideoEntity(
      id: fullVideo.id ?? "-1",
      iso_639_1: fullVideo.iso_639_1 ?? "-1",
      site: fullVideo.site ?? "null",
      type: fullVideo.type ?? "null",
      key: fullVideo.key ?? "null",
    );

    return entity;
  }

  @override
  Future<void> saveMovieToMyHistory(int id) async {
    await ReviewService.ins.saveMovieToMyHistory(id);
  }
}

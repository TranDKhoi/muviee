import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_video_entity.dart';
import 'package:muviee/common/models/movie_video_model.dart';
import 'package:muviee/common/entity/user_entity.dart';
import 'package:muviee/features/movie_detail/data/data_sources/movie_detail_service.dart';
import 'package:muviee/features/movie_detail/data/models/review/review_search_model.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/gallery_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/image_info_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/review/review_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/review/review_search_entity.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/actor/actor_entity.dart';
import '../../../../common/entity/actor/person_entity.dart';
import '../../../../common/entity/country_entity.dart';
import '../../../../common/models/actor/actor_model.dart';
import '../../domain/repositories/movie_detail_repository.dart';
import '../models/gallery/gallery_model.dart';

@Injectable(as: MovieDetailRepository)
class MovieDetailRepositoryImpl implements MovieDetailRepository {
  @override
  Future<List<ActorEntity>> getActorOfMovie(int id) async {
    var res = await MovieDetailService.ins.getActorOfMovie(id);
    var casting = res.serverData["cast"];

    List<ActorModel> actorModels = [];
    for (var item in casting) {
      actorModels.add(ActorModel.fromJson(item));
    }

    List<ActorEntity> actorEntities = List.from(
      actorModels.map(
        (e) => ActorEntity(
          character: e.character ?? "null",
          creditId: e.creditId ?? "null",
          person: PersonEntity(
              biography: e.person?.biography ?? "null",
              birthday: e.person?.birthday ?? "null",
              deathday: e.person?.deathday ?? "null",
              gender: e.person?.gender ?? -1,
              homepage: e.person?.homepage ?? "null",
              id: e.person?.id ?? -1,
              imdbId: e.person?.imdbId ?? "null",
              name: e.person?.name ?? "null",
              placeOfBirth: e.person?.placeOfBirth ?? "null",
              popularity: e.person?.popularity ?? -1,
              profilePath: e.person?.profilePath ?? "null"),
        ),
      ),
    );

    return actorEntities;
  }

  @override
  Future<GalleryEntity> getGalleryOfMovie(int id) async {
    var res = await MovieDetailService.ins.getGalleryOfMovie(id);
    GalleryModel model = GalleryModel.fromJson(res.serverData);

    GalleryEntity entity = GalleryEntity(
      id: model.id ?? -1,
      posters: model.posters
              ?.map(
                (e) => ImageInfoEntity(
                    aspectRatio: e.aspectRatio ?? 0,
                    filePath: e.filePath ?? "",
                    height: e.height ?? 1,
                    width: e.width ?? 1),
              )
              .toList() ??
          [],
      backdrops: model.backdrops
              ?.map(
                (e) => ImageInfoEntity(
                    aspectRatio: e.aspectRatio ?? 0,
                    filePath: e.filePath ?? "",
                    height: e.height ?? 1,
                    width: e.width ?? 1),
              )
              .toList() ??
          [],
    );

    return entity;
  }

  @override
  Future<ReviewSearchEntity> getReviewOfMovie(int id) async {
    var res = await MovieDetailService.ins.getReviewOfMovie(id);
    ReviewSearchModel model = ReviewSearchModel.fromJson(res.serverData);

    ReviewSearchEntity entity = ReviewSearchEntity(
      page: model.page ?? 0,
      totalPages: model.totalPages ?? 0,
      totalResults: model.totalResults ?? 0,
      id: model.id ?? -1,
      results: model.results
              ?.map((e) => ReviewEntity(
                    author: e.author ?? "null",
                    authorDetails: UserEntity(
                        id: e.authorDetails?.id ?? -1,
                        username: e.authorDetails?.username ?? "null",
                        email: e.authorDetails?.email ?? "null",
                        country: CountryEntity(
                            id: e.authorDetails?.country?.id ?? -1,
                            name: e.authorDetails?.country?.name ?? "null",
                            code: e.authorDetails?.country?.code ?? "null",
                            image: e.authorDetails?.country?.image ?? "null"),
                        token: ""),
                    content: e.content ?? "",
                    id: e.id ?? "null",
                    rating: e.rating ?? 0,
                  ))
              .toList() ??
          [],
    );

    return entity;
  }

  @override
  Future<MovieVideoEntity> getVideoOfMovie(int id) async {
    var res = await MovieDetailService.ins.getVideoOfMovie(id);
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
}

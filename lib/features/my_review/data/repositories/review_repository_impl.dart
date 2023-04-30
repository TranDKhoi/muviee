import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/review/review_search_entity.dart';
import 'package:muviee/features/my_review/data/data_sources/review_service.dart';
import 'package:muviee/features/my_review/domain/repositories/review_repository.dart';
import 'package:muviee/utils/extensions/dio_extension.dart';

import '../../../../common/entity/country_entity.dart';
import '../../../../common/entity/review/review_entity.dart';
import '../../../../common/entity/user_entity.dart';
import '../../../../common/models/review/review_search_model.dart';

@Injectable(as: ReviewRepository)
class ReviewRepositoryImpl implements ReviewRepository {
  @override
  Future<ReviewSearchEntity> getMyReview() async {
    var res = await ReviewService.ins.getMyReview();

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
}

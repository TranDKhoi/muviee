import 'package:injectable/injectable.dart';

import '../../../../common/entity/review/review_search_entity.dart';
import '../repositories/review_repository.dart';

abstract class ReviewUseCase {
  Future<ReviewSearchEntity> getMyReview();
}

@Injectable(as: ReviewUseCase)
class ReviewUseCaseImpl implements ReviewUseCase {
  ReviewUseCaseImpl(this._repo);

  final ReviewRepository _repo;

  @override
  Future<ReviewSearchEntity> getMyReview() {
    return _repo.getMyReview();
  }
}

import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';
import 'package:muviee/exceptions/app_exception.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../../config/langs/r.dart';
import '../repository/profile_repository.dart';

abstract class ProfileUseCase {
  Future<void> logOut();

  Future<MovieSearchEntity> getMyFavorite();

  Future<MyReviewSearchEntity> getMyReview();

  Future<void> changePassword(String old, String newP, String reP);
}

@Injectable(as: ProfileUseCase)
class ProfileUseCaseImpl implements ProfileUseCase {
  ProfileUseCaseImpl(this._repo);

  final ProfileRepository _repo;

  @override
  Future<void> logOut() async {
    await _repo.logOut();
  }

  @override
  Future<MovieSearchEntity> getMyFavorite() {
    return _repo.getMyFavorite();
  }

  @override
  Future<MyReviewSearchEntity> getMyReview() {
    return _repo.getMyReview();
  }

  @override
  Future<void> changePassword(String old, String newP, String reP) {
    if (old.isEmpty || newP.isEmpty || reP.isEmpty) {
      throw InvalidField(R.pleaseFillAllTheFields.translate);
    }
    if (newP.length < 6 || reP.length < 6) {
      throw InvalidPassword(R.passwordMustAtLeast6char.translate);
    }
    if (newP != reP) {
      throw InvalidPassword(R.passwordsDoNotMatch.translate);
    }

    return _repo.changePassword(old, newP);
  }
}

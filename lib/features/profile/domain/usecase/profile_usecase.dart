import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';

import '../repository/profile_repository.dart';

abstract class ProfileUseCase {
  Future<void> logOut();

  Future<MovieSearchEntity> getMyFavorite();
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
}

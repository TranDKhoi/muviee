import 'package:muviee/common/entity/movie_search_entity.dart';

abstract class ProfileRepository {
  Future<void> logOut();
  Future<MovieSearchEntity> getMyFavorite();
}

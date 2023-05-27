import '../../../../common/entity/actor/actor_entity.dart';
import '../../../../common/entity/movie_entity.dart';
import '../../../../common/entity/movie_video_entity.dart';
import '../entities/gallery/gallery_entity.dart';
import '../review/review_search_entity.dart';

abstract class MovieDetailRepository {
  Future<List<MovieEntity>> getSimilarMovie(int id);

  Future<List<ActorEntity>> getActorOfMovie(int id);

  Future<GalleryEntity> getGalleryOfMovie(int id);

  Future<ReviewSearchEntity> getReviewOfMovie(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);

  Future<void> submitReview(int id, String content, double rating);

  Future<void> likeMovie(int id);

  Future<void> unLikeMovie(int id);

  Future<void> saveMovieToMyHistory(int id);
}

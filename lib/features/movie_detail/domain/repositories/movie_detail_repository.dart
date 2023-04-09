import '../../../../common/models/movie_video_entity.dart';
import '../entities/actor/actor_entity.dart';
import '../entities/gallery/gallery_entity.dart';
import '../entities/review/review_search_entity.dart';

abstract class MovieDetailRepository {
  Future<List<ActorEntity>> getActorOfMovie(int id);

  Future<GalleryEntity> getGalleryOfMovie(int id);

  Future<ReviewSearchEntity> getReviewOfMovie(int id);

  Future<MovieVideoEntity> getVideoOfMovie(int id);
}

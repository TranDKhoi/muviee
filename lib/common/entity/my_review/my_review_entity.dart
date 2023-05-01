import 'package:muviee/common/entity/movie_entity.dart';

class MyReviewEntity {
  final String id;
  final double rating;
  final String content;
  final MovieEntity movie;
  final DateTime createdAt;

  const MyReviewEntity({
    required this.id,
    required this.rating,
    required this.content,
    required this.movie,
    required this.createdAt,
  });
}

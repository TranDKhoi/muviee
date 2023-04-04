import 'review_entity.dart';

class ReviewSearchEntity {
  final int page;
  final int totalPages;
  final int totalResults;
  final int id;
  List<ReviewEntity> results;

  ReviewSearchEntity({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.id,
    required this.results,
  });
}

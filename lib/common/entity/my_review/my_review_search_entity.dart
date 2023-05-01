import 'my_review_entity.dart';

class MyReviewSearchEntity {
  final int totalPages;
  final int totalResults;
  final int page;
  final List<MyReviewEntity> results;
  final int id;

  const MyReviewSearchEntity({
    required this.totalPages,
    required this.totalResults,
    required this.page,
    required this.results,
    required this.id,
  });
}

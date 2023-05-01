import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/features/movie_detail/data/models/review/review_model.dart';

part 'review_search_model.freezed.dart';

part 'review_search_model.g.dart';

@freezed
class ReviewSearchModel with _$ReviewSearchModel {
  const factory ReviewSearchModel({
    int? page,
    int? totalPages,
    int? totalResults,
    int? id,
    List<ReviewModel>? results,
  }) = _ReviewSearchModel;

  factory ReviewSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewSearchModelFromJson(json);
}

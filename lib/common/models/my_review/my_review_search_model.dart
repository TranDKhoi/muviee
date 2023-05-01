import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/common/models/my_review/my_review_model.dart';

part 'my_review_search_model.freezed.dart';

part 'my_review_search_model.g.dart';

@freezed
class MyReviewSearchModel with _$MyReviewSearchModel {
  const factory MyReviewSearchModel({
    int? page,
    List<MyReviewModel>? results,
    int? totalPages,
    int? totalResults,
    int? id,
  }) = _MyReviewSearchModel;

  factory MyReviewSearchModel.fromJson(Map<String, dynamic> json) =>
      _$MyReviewSearchModelFromJson(json);
}

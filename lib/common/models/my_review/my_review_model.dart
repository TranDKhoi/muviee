import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/common/models/movie_model.dart';

part 'my_review_model.freezed.dart';

part 'my_review_model.g.dart';

@freezed
class MyReviewModel with _$MyReviewModel {
  const factory MyReviewModel({
    String? id,
    MovieModel? movie,
    String? content,
    double? rating,
    DateTime? createdAt,
  }) = _MyReviewModel;

  factory MyReviewModel.fromJson(Map<String, dynamic> json) => _$MyReviewModelFromJson(json);
}

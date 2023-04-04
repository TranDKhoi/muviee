import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/common/models/user_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    String? author,
    UserModel? authorDetails,
    String? content,
    String? id,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

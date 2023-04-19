import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';

part 'person_model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    String? biography,
    String? birthday,
    String? deathday,
    int? gender,
    String? homepage,
    int? id,
    String? imdbId,
    String? name,
    String? placeOfBirth,
    double? popularity,
    String? profilePath,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}

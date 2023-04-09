import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video_model.g.dart';

@JsonSerializable()
class MovieVideoModel {
  final String? id;
  final String? iso_639_1;
  final String? site;
  final String? type;
  final String? key;

  const MovieVideoModel({
    this.id,
    this.iso_639_1,
    this.site,
    this.type,
    this.key,
  });

  factory MovieVideoModel.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieVideoModelToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_info_model.freezed.dart';
part 'image_info_model.g.dart';

@freezed
class ImageInfoModel with _$ImageInfoModel {
  const factory ImageInfoModel({
    int? aspectRatio,
    String? filePath,
    int? height,
    int? width,
  }) = _ImageInfoModel;

  factory ImageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ImageInfoModelFromJson(json);
}

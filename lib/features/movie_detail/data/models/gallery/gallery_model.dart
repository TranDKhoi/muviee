import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_info_model.dart';

part 'gallery_model.freezed.dart';
part 'gallery_model.g.dart';

@freezed
class GalleryModel with _$GalleryModel {
  const factory GalleryModel({
    int? id,
    List<ImageInfoModel>? posters,
    List<ImageInfoModel>? backdrops,
  }) = _GalleryModel;

  factory GalleryModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryModelFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GalleryModel _$$_GalleryModelFromJson(Map<String, dynamic> json) =>
    _$_GalleryModel(
      id: json['id'] as int?,
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => ImageInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => ImageInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GalleryModelToJson(_$_GalleryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'posters': instance.posters,
      'backdrops': instance.backdrops,
    };

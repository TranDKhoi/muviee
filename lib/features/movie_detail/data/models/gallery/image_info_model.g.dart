// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageInfoModel _$$_ImageInfoModelFromJson(Map<String, dynamic> json) =>
    _$_ImageInfoModel(
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
      filePath: json['filePath'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_ImageInfoModelToJson(_$_ImageInfoModel instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'filePath': instance.filePath,
      'height': instance.height,
      'width': instance.width,
    };

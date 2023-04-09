// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieVideoModel _$MovieVideoModelFromJson(Map<String, dynamic> json) =>
    MovieVideoModel(
      id: json['id'] as String?,
      iso_639_1: json['iso_639_1'] as String?,
      site: json['site'] as String?,
      type: json['type'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$MovieVideoModelToJson(MovieVideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_639_1': instance.iso_639_1,
      'site': instance.site,
      'type': instance.type,
      'key': instance.key,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewSearchModel _$$_ReviewSearchModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewSearchModel(
      page: json['page'] as int?,
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReviewSearchModelToJson(
        _$_ReviewSearchModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'id': instance.id,
      'results': instance.results,
    };

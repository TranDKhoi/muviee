// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_review_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyReviewSearchModel _$$_MyReviewSearchModelFromJson(
        Map<String, dynamic> json) =>
    _$_MyReviewSearchModel(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MyReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_MyReviewSearchModelToJson(
        _$_MyReviewSearchModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'id': instance.id,
    };

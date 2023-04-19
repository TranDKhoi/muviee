// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorSearchModel _$ActorSearchModelFromJson(Map<String, dynamic> json) =>
    ActorSearchModel(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPage: json['totalPage'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$ActorSearchModelToJson(ActorSearchModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPage': instance.totalPage,
      'totalResults': instance.totalResults,
    };

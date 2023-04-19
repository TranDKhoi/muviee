// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieSearchModel _$MovieSearchModelFromJson(Map<String, dynamic> json) =>
    MovieSearchModel(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPage: json['totalPage'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$MovieSearchModelToJson(MovieSearchModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPage': instance.totalPage,
      'totalResults': instance.totalResults,
    };

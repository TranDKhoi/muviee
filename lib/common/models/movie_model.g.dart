// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int?,
      backdropPath: json['backdropPath'] as String?,
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imdbId: json['imdbId'] as String?,
      originalTitle: json['originalTitle'] as String?,
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      string: json['string'] as int?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdropPath': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'imdbId': instance.imdbId,
      'originalTitle': instance.originalTitle,
      'title': instance.title,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'string': instance.string,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };

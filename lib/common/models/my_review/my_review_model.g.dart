// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyReviewModel _$$_MyReviewModelFromJson(Map<String, dynamic> json) =>
    _$_MyReviewModel(
      id: json['id'] as String?,
      movie: json['movie'] == null
          ? null
          : MovieModel.fromJson(json['movie'] as Map<String, dynamic>),
      content: json['content'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MyReviewModelToJson(_$_MyReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movie': instance.movie,
      'content': instance.content,
      'rating': instance.rating,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewModel _$$_ReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewModel(
      author: json['author'] as String?,
      authorDetails: json['authorDetails'] == null
          ? null
          : UserModel.fromJson(json['authorDetails'] as Map<String, dynamic>),
      content: json['content'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ReviewModelToJson(_$_ReviewModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'authorDetails': instance.authorDetails,
      'content': instance.content,
      'id': instance.id,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorModel _$$_ActorModelFromJson(Map<String, dynamic> json) =>
    _$_ActorModel(
      character: json['character'] as String?,
      creditId: json['creditId'] as String?,
      person: json['person'] == null
          ? null
          : PersonModel.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ActorModelToJson(_$_ActorModel instance) =>
    <String, dynamic>{
      'character': instance.character,
      'creditId': instance.creditId,
      'person': instance.person,
    };

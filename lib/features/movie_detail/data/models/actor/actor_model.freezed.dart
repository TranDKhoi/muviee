// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _ActorModel.fromJson(json);
}

/// @nodoc
mixin _$ActorModel {
  String? get character => throw _privateConstructorUsedError;
  String? get creditId => throw _privateConstructorUsedError;
  PersonModel? get person => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
          ActorModel value, $Res Function(ActorModel) then) =
      _$ActorModelCopyWithImpl<$Res, ActorModel>;
  @useResult
  $Res call({String? character, String? creditId, PersonModel? person});

  $PersonModelCopyWith<$Res>? get person;
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res, $Val extends ActorModel>
    implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? creditId = freezed,
    Object? person = freezed,
  }) {
    return _then(_value.copyWith(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonModelCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonModelCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActorModelCopyWith<$Res>
    implements $ActorModelCopyWith<$Res> {
  factory _$$_ActorModelCopyWith(
          _$_ActorModel value, $Res Function(_$_ActorModel) then) =
      __$$_ActorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? character, String? creditId, PersonModel? person});

  @override
  $PersonModelCopyWith<$Res>? get person;
}

/// @nodoc
class __$$_ActorModelCopyWithImpl<$Res>
    extends _$ActorModelCopyWithImpl<$Res, _$_ActorModel>
    implements _$$_ActorModelCopyWith<$Res> {
  __$$_ActorModelCopyWithImpl(
      _$_ActorModel _value, $Res Function(_$_ActorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? creditId = freezed,
    Object? person = freezed,
  }) {
    return _then(_$_ActorModel(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as PersonModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorModel implements _ActorModel {
  const _$_ActorModel({this.character, this.creditId, this.person});

  factory _$_ActorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActorModelFromJson(json);

  @override
  final String? character;
  @override
  final String? creditId;
  @override
  final PersonModel? person;

  @override
  String toString() {
    return 'ActorModel(character: $character, creditId: $creditId, person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActorModel &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.person, person) || other.person == person));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, character, creditId, person);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActorModelCopyWith<_$_ActorModel> get copyWith =>
      __$$_ActorModelCopyWithImpl<_$_ActorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorModelToJson(
      this,
    );
  }
}

abstract class _ActorModel implements ActorModel {
  const factory _ActorModel(
      {final String? character,
      final String? creditId,
      final PersonModel? person}) = _$_ActorModel;

  factory _ActorModel.fromJson(Map<String, dynamic> json) =
      _$_ActorModel.fromJson;

  @override
  String? get character;
  @override
  String? get creditId;
  @override
  PersonModel? get person;
  @override
  @JsonKey(ignore: true)
  _$$_ActorModelCopyWith<_$_ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

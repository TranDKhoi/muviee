// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryModel _$GalleryModelFromJson(Map<String, dynamic> json) {
  return _GalleryModel.fromJson(json);
}

/// @nodoc
mixin _$GalleryModel {
  int? get id => throw _privateConstructorUsedError;
  List<ImageInfoModel>? get posters => throw _privateConstructorUsedError;
  List<ImageInfoModel>? get backdrops => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryModelCopyWith<GalleryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryModelCopyWith<$Res> {
  factory $GalleryModelCopyWith(
          GalleryModel value, $Res Function(GalleryModel) then) =
      _$GalleryModelCopyWithImpl<$Res, GalleryModel>;
  @useResult
  $Res call(
      {int? id,
      List<ImageInfoModel>? posters,
      List<ImageInfoModel>? backdrops});
}

/// @nodoc
class _$GalleryModelCopyWithImpl<$Res, $Val extends GalleryModel>
    implements $GalleryModelCopyWith<$Res> {
  _$GalleryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? posters = freezed,
    Object? backdrops = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posters: freezed == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoModel>?,
      backdrops: freezed == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GalleryModelCopyWith<$Res>
    implements $GalleryModelCopyWith<$Res> {
  factory _$$_GalleryModelCopyWith(
          _$_GalleryModel value, $Res Function(_$_GalleryModel) then) =
      __$$_GalleryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<ImageInfoModel>? posters,
      List<ImageInfoModel>? backdrops});
}

/// @nodoc
class __$$_GalleryModelCopyWithImpl<$Res>
    extends _$GalleryModelCopyWithImpl<$Res, _$_GalleryModel>
    implements _$$_GalleryModelCopyWith<$Res> {
  __$$_GalleryModelCopyWithImpl(
      _$_GalleryModel _value, $Res Function(_$_GalleryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? posters = freezed,
    Object? backdrops = freezed,
  }) {
    return _then(_$_GalleryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoModel>?,
      backdrops: freezed == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GalleryModel implements _GalleryModel {
  const _$_GalleryModel(
      {this.id,
      final List<ImageInfoModel>? posters,
      final List<ImageInfoModel>? backdrops})
      : _posters = posters,
        _backdrops = backdrops;

  factory _$_GalleryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryModelFromJson(json);

  @override
  final int? id;
  final List<ImageInfoModel>? _posters;
  @override
  List<ImageInfoModel>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageInfoModel>? _backdrops;
  @override
  List<ImageInfoModel>? get backdrops {
    final value = _backdrops;
    if (value == null) return null;
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GalleryModel(id: $id, posters: $posters, backdrops: $backdrops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._posters, _posters) &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_posters),
      const DeepCollectionEquality().hash(_backdrops));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GalleryModelCopyWith<_$_GalleryModel> get copyWith =>
      __$$_GalleryModelCopyWithImpl<_$_GalleryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryModelToJson(
      this,
    );
  }
}

abstract class _GalleryModel implements GalleryModel {
  const factory _GalleryModel(
      {final int? id,
      final List<ImageInfoModel>? posters,
      final List<ImageInfoModel>? backdrops}) = _$_GalleryModel;

  factory _GalleryModel.fromJson(Map<String, dynamic> json) =
      _$_GalleryModel.fromJson;

  @override
  int? get id;
  @override
  List<ImageInfoModel>? get posters;
  @override
  List<ImageInfoModel>? get backdrops;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryModelCopyWith<_$_GalleryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

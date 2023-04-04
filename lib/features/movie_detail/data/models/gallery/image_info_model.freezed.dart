// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageInfoModel _$ImageInfoModelFromJson(Map<String, dynamic> json) {
  return _ImageInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ImageInfoModel {
  int? get aspectRatio => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageInfoModelCopyWith<ImageInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageInfoModelCopyWith<$Res> {
  factory $ImageInfoModelCopyWith(
          ImageInfoModel value, $Res Function(ImageInfoModel) then) =
      _$ImageInfoModelCopyWithImpl<$Res, ImageInfoModel>;
  @useResult
  $Res call({int? aspectRatio, String? filePath, int? height, int? width});
}

/// @nodoc
class _$ImageInfoModelCopyWithImpl<$Res, $Val extends ImageInfoModel>
    implements $ImageInfoModelCopyWith<$Res> {
  _$ImageInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? filePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageInfoModelCopyWith<$Res>
    implements $ImageInfoModelCopyWith<$Res> {
  factory _$$_ImageInfoModelCopyWith(
          _$_ImageInfoModel value, $Res Function(_$_ImageInfoModel) then) =
      __$$_ImageInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? aspectRatio, String? filePath, int? height, int? width});
}

/// @nodoc
class __$$_ImageInfoModelCopyWithImpl<$Res>
    extends _$ImageInfoModelCopyWithImpl<$Res, _$_ImageInfoModel>
    implements _$$_ImageInfoModelCopyWith<$Res> {
  __$$_ImageInfoModelCopyWithImpl(
      _$_ImageInfoModel _value, $Res Function(_$_ImageInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? filePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ImageInfoModel(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageInfoModel implements _ImageInfoModel {
  const _$_ImageInfoModel(
      {this.aspectRatio, this.filePath, this.height, this.width});

  factory _$_ImageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageInfoModelFromJson(json);

  @override
  final int? aspectRatio;
  @override
  final String? filePath;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImageInfoModel(aspectRatio: $aspectRatio, filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageInfoModel &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, aspectRatio, filePath, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageInfoModelCopyWith<_$_ImageInfoModel> get copyWith =>
      __$$_ImageInfoModelCopyWithImpl<_$_ImageInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageInfoModelToJson(
      this,
    );
  }
}

abstract class _ImageInfoModel implements ImageInfoModel {
  const factory _ImageInfoModel(
      {final int? aspectRatio,
      final String? filePath,
      final int? height,
      final int? width}) = _$_ImageInfoModel;

  factory _ImageInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ImageInfoModel.fromJson;

  @override
  int? get aspectRatio;
  @override
  String? get filePath;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImageInfoModelCopyWith<_$_ImageInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

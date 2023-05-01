// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyReviewModel _$MyReviewModelFromJson(Map<String, dynamic> json) {
  return _MyReviewModel.fromJson(json);
}

/// @nodoc
mixin _$MyReviewModel {
  String? get id => throw _privateConstructorUsedError;
  MovieModel? get movie => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyReviewModelCopyWith<MyReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReviewModelCopyWith<$Res> {
  factory $MyReviewModelCopyWith(
          MyReviewModel value, $Res Function(MyReviewModel) then) =
      _$MyReviewModelCopyWithImpl<$Res, MyReviewModel>;
  @useResult
  $Res call(
      {String? id,
      MovieModel? movie,
      String? content,
      double? rating,
      DateTime? createdAt});
}

/// @nodoc
class _$MyReviewModelCopyWithImpl<$Res, $Val extends MyReviewModel>
    implements $MyReviewModelCopyWith<$Res> {
  _$MyReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movie = freezed,
    Object? content = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyReviewModelCopyWith<$Res>
    implements $MyReviewModelCopyWith<$Res> {
  factory _$$_MyReviewModelCopyWith(
          _$_MyReviewModel value, $Res Function(_$_MyReviewModel) then) =
      __$$_MyReviewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      MovieModel? movie,
      String? content,
      double? rating,
      DateTime? createdAt});
}

/// @nodoc
class __$$_MyReviewModelCopyWithImpl<$Res>
    extends _$MyReviewModelCopyWithImpl<$Res, _$_MyReviewModel>
    implements _$$_MyReviewModelCopyWith<$Res> {
  __$$_MyReviewModelCopyWithImpl(
      _$_MyReviewModel _value, $Res Function(_$_MyReviewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movie = freezed,
    Object? content = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_MyReviewModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyReviewModel implements _MyReviewModel {
  const _$_MyReviewModel(
      {this.id, this.movie, this.content, this.rating, this.createdAt});

  factory _$_MyReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyReviewModelFromJson(json);

  @override
  final String? id;
  @override
  final MovieModel? movie;
  @override
  final String? content;
  @override
  final double? rating;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MyReviewModel(id: $id, movie: $movie, content: $content, rating: $rating, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyReviewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, movie, content, rating, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyReviewModelCopyWith<_$_MyReviewModel> get copyWith =>
      __$$_MyReviewModelCopyWithImpl<_$_MyReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyReviewModelToJson(
      this,
    );
  }
}

abstract class _MyReviewModel implements MyReviewModel {
  const factory _MyReviewModel(
      {final String? id,
      final MovieModel? movie,
      final String? content,
      final double? rating,
      final DateTime? createdAt}) = _$_MyReviewModel;

  factory _MyReviewModel.fromJson(Map<String, dynamic> json) =
      _$_MyReviewModel.fromJson;

  @override
  String? get id;
  @override
  MovieModel? get movie;
  @override
  String? get content;
  @override
  double? get rating;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MyReviewModelCopyWith<_$_MyReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

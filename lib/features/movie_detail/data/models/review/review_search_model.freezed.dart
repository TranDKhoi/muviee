// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewSearchModel _$ReviewSearchModelFromJson(Map<String, dynamic> json) {
  return _ReviewSearchModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewSearchModel {
  int? get page => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<ReviewModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewSearchModelCopyWith<ReviewSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewSearchModelCopyWith<$Res> {
  factory $ReviewSearchModelCopyWith(
          ReviewSearchModel value, $Res Function(ReviewSearchModel) then) =
      _$ReviewSearchModelCopyWithImpl<$Res, ReviewSearchModel>;
  @useResult
  $Res call(
      {int? page,
      int? totalPages,
      int? totalResults,
      int? id,
      List<ReviewModel>? results});
}

/// @nodoc
class _$ReviewSearchModelCopyWithImpl<$Res, $Val extends ReviewSearchModel>
    implements $ReviewSearchModelCopyWith<$Res> {
  _$ReviewSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewSearchModelCopyWith<$Res>
    implements $ReviewSearchModelCopyWith<$Res> {
  factory _$$_ReviewSearchModelCopyWith(_$_ReviewSearchModel value,
          $Res Function(_$_ReviewSearchModel) then) =
      __$$_ReviewSearchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? totalPages,
      int? totalResults,
      int? id,
      List<ReviewModel>? results});
}

/// @nodoc
class __$$_ReviewSearchModelCopyWithImpl<$Res>
    extends _$ReviewSearchModelCopyWithImpl<$Res, _$_ReviewSearchModel>
    implements _$$_ReviewSearchModelCopyWith<$Res> {
  __$$_ReviewSearchModelCopyWithImpl(
      _$_ReviewSearchModel _value, $Res Function(_$_ReviewSearchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ReviewSearchModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewSearchModel implements _ReviewSearchModel {
  const _$_ReviewSearchModel(
      {this.page,
      this.totalPages,
      this.totalResults,
      this.id,
      final List<ReviewModel>? results})
      : _results = results;

  factory _$_ReviewSearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewSearchModelFromJson(json);

  @override
  final int? page;
  @override
  final int? totalPages;
  @override
  final int? totalResults;
  @override
  final int? id;
  final List<ReviewModel>? _results;
  @override
  List<ReviewModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewSearchModel(page: $page, totalPages: $totalPages, totalResults: $totalResults, id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewSearchModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewSearchModelCopyWith<_$_ReviewSearchModel> get copyWith =>
      __$$_ReviewSearchModelCopyWithImpl<_$_ReviewSearchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewSearchModelToJson(
      this,
    );
  }
}

abstract class _ReviewSearchModel implements ReviewSearchModel {
  const factory _ReviewSearchModel(
      {final int? page,
      final int? totalPages,
      final int? totalResults,
      final int? id,
      final List<ReviewModel>? results}) = _$_ReviewSearchModel;

  factory _ReviewSearchModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewSearchModel.fromJson;

  @override
  int? get page;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  int? get id;
  @override
  List<ReviewModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewSearchModelCopyWith<_$_ReviewSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

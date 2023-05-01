// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_review_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyReviewSearchModel _$MyReviewSearchModelFromJson(Map<String, dynamic> json) {
  return _MyReviewSearchModel.fromJson(json);
}

/// @nodoc
mixin _$MyReviewSearchModel {
  int? get page => throw _privateConstructorUsedError;
  List<MyReviewModel>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyReviewSearchModelCopyWith<MyReviewSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReviewSearchModelCopyWith<$Res> {
  factory $MyReviewSearchModelCopyWith(
          MyReviewSearchModel value, $Res Function(MyReviewSearchModel) then) =
      _$MyReviewSearchModelCopyWithImpl<$Res, MyReviewSearchModel>;
  @useResult
  $Res call(
      {int? page,
      List<MyReviewModel>? results,
      int? totalPages,
      int? totalResults,
      int? id});
}

/// @nodoc
class _$MyReviewSearchModelCopyWithImpl<$Res, $Val extends MyReviewSearchModel>
    implements $MyReviewSearchModelCopyWith<$Res> {
  _$MyReviewSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MyReviewModel>?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyReviewSearchModelCopyWith<$Res>
    implements $MyReviewSearchModelCopyWith<$Res> {
  factory _$$_MyReviewSearchModelCopyWith(_$_MyReviewSearchModel value,
          $Res Function(_$_MyReviewSearchModel) then) =
      __$$_MyReviewSearchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<MyReviewModel>? results,
      int? totalPages,
      int? totalResults,
      int? id});
}

/// @nodoc
class __$$_MyReviewSearchModelCopyWithImpl<$Res>
    extends _$MyReviewSearchModelCopyWithImpl<$Res, _$_MyReviewSearchModel>
    implements _$$_MyReviewSearchModelCopyWith<$Res> {
  __$$_MyReviewSearchModelCopyWithImpl(_$_MyReviewSearchModel _value,
      $Res Function(_$_MyReviewSearchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_MyReviewSearchModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MyReviewModel>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyReviewSearchModel implements _MyReviewSearchModel {
  const _$_MyReviewSearchModel(
      {this.page,
      final List<MyReviewModel>? results,
      this.totalPages,
      this.totalResults,
      this.id})
      : _results = results;

  factory _$_MyReviewSearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyReviewSearchModelFromJson(json);

  @override
  final int? page;
  final List<MyReviewModel>? _results;
  @override
  List<MyReviewModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;
  @override
  final int? id;

  @override
  String toString() {
    return 'MyReviewSearchModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyReviewSearchModel &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      totalPages,
      totalResults,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyReviewSearchModelCopyWith<_$_MyReviewSearchModel> get copyWith =>
      __$$_MyReviewSearchModelCopyWithImpl<_$_MyReviewSearchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyReviewSearchModelToJson(
      this,
    );
  }
}

abstract class _MyReviewSearchModel implements MyReviewSearchModel {
  const factory _MyReviewSearchModel(
      {final int? page,
      final List<MyReviewModel>? results,
      final int? totalPages,
      final int? totalResults,
      final int? id}) = _$_MyReviewSearchModel;

  factory _MyReviewSearchModel.fromJson(Map<String, dynamic> json) =
      _$_MyReviewSearchModel.fromJson;

  @override
  int? get page;
  @override
  List<MyReviewModel>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MyReviewSearchModelCopyWith<_$_MyReviewSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

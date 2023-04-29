import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_model.dart';

part 'movie_search_model.g.dart';

@JsonSerializable()
class MovieSearchModel {
  int? page;
  List<MovieModel>? results;
  int? totalPage;
  int? totalResults;

  MovieSearchModel({
    this.page,
    this.results,
    this.totalPage,
    this.totalResults,
  });
  factory MovieSearchModel.fromJson(Map<String, dynamic> json) => _$MovieSearchModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieSearchModelToJson(this);
}

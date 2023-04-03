import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre_model.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  int? id;
  String? backdropPath;
  int? budget;
  List<GenreModel>? genres;
  String? imdbId;
  String? originalTitle;
  String? title;
  String? overview;
  String? posterPath;
  String? releaseDate;
  int? revenue;
  int? runtime;
  int? string;
  double? voteAverage;
  int? voteCount;

  MovieModel({
    this.id,
    this.backdropPath,
    this.budget,
    this.genres,
    this.imdbId,
    this.originalTitle,
    this.title,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.string,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}

import 'genre_entity.dart';

class MovieEntity {
  final int id;
  final String backdropPath;
  final int budget;
  final List<GenreEntity> genres;
  final String imdbId;
  final String originalTitle;
  final String title;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final double voteAverage;
  final int voteCount;

  const MovieEntity({
    required this.id,
    required this.backdropPath,
    required this.budget,
    required this.genres,
    required this.imdbId,
    required this.originalTitle,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.voteAverage,
    required this.voteCount,
  });
}

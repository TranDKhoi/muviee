import 'package:muviee/common/entity/movie_entity.dart';

class MovieSearchEntity {
  final int page;
  final List<MovieEntity> results;
  final int totalPage;
  final int totalResults;

  MovieSearchEntity({
    required this.page,
    required this.results,
    required this.totalPage,
    required this.totalResults,
  });
}

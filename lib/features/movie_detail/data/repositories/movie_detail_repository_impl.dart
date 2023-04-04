import 'package:injectable/injectable.dart';

import '../../domain/repositories/movie_detail_repository.dart';

@Injectable(as: MovieDetailRepository)
class MovieDetailRepositoryImpl implements MovieDetailRepository {}

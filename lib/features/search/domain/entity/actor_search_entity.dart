import 'package:muviee/common/entity/actor/person_entity.dart';

class ActorSearchEntity {
  final int page;
  final List<PersonEntity> results;
  final int totalPage;
  final int totalResults;

  const ActorSearchEntity({
    required this.page,
    required this.results,
    required this.totalPage,
    required this.totalResults,
  });
}

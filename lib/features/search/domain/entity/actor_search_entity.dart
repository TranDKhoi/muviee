import 'package:muviee/common/entity/actor/person_entity.dart';

class ActorSearchEntity {
  int? page;
  List<PersonEntity>? results;
  int? totalPage;
  int? totalResults;

  ActorSearchEntity({
    this.page,
    this.results,
    this.totalPage,
    this.totalResults,
  });
}

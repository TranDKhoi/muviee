import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/common/models/actor/person_model.dart';

part 'actor_search_model.g.dart';

@JsonSerializable()
class ActorSearchModel {
  int? page;
  List<PersonModel>? results;
  int? totalPage;
  int? totalResults;

  ActorSearchModel({
    this.page,
    this.results,
    this.totalPage,
    this.totalResults,
  });

  factory ActorSearchModel.fromJson(Map<String, dynamic> json) => _$ActorSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActorSearchModelToJson(this);
}

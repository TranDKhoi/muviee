import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muviee/features/movie_detail/data/models/actor/person_model.dart';

part 'actor_model.freezed.dart';
part 'actor_model.g.dart';

@freezed
class ActorModel with _$ActorModel {
  const factory ActorModel({
    String? character,
    String? creditId,
    PersonModel? person,
  }) = _ActorModel;

  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);
}

import 'person_entity.dart';

class ActorEntity {
  final String character;
  final String creditId;
  final PersonEntity person;

  const ActorEntity({
    required this.character,
    required this.creditId,
    required this.person,
  });
}

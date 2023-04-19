import 'country_entity.dart';

class UserEntity {
  final int id;
  final String username;
  final String email;
  final CountryEntity country;
  final String token;

  UserEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.country,
    required this.token,
  });
}

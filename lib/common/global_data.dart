import 'package:muviee/features/auth/login/domain/entities/user_entity.dart';

class GlobalData {
  static final ins = GlobalData._();
  GlobalData._();

  UserEntity? currentUser;
  String? localToken;
}

import 'package:muviee/common/models/user_entity.dart';

class GlobalData {
  static final ins = GlobalData._();
  GlobalData._();

  UserEntity? currentUser;
  String? localToken;
}

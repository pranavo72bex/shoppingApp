import 'package:shoppingApp/domain/user/user.dart';

abstract class IUserRepo {
  Future<User> getUser();
}

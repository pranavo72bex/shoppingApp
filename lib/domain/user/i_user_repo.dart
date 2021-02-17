import 'package:shoppingApp/domain/user/user.dart';

abstract class IUserRepo {
  Stream<User> getUser();
}

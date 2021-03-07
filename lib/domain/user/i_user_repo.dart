import 'user.dart';

abstract class IUserRepo {
  Future<User> getUser();
}

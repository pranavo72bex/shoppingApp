import 'package:injectable/injectable.dart';
import '../../domain/user/i_user_repo.dart';
import '../../domain/user/user.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  User _user;

  @override
  Future<User> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(
        id: 'null',
        name: 'null',
        email: 'null',
        phone: 'null',
        status: 'null',
        isMobileVerified: 'null',
        isEmailVerified: 'null',
        createdDate: 'null',
        token: 'null',
      ),
    );
  }
}

import 'package:flutter/foundation.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class IAuthRepo {
  Stream<AuthenticationStatus> get status;

  Future<void> login({
    @required String username,
    @required String password,
  });

  void logout();

  void dispose(); //Auth repo creates streams and returns, so need to dispose it
}

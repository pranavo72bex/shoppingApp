import 'dart:async';

import 'package:shoppingApp/domain/auth/i_auth_repo.dart';

class AuthRepo implements IAuthRepo {
  final _controller = StreamController<AuthenticationStatus>();

  @override
  Stream<AuthenticationStatus> get status async* {
    //TODO remove this delay and implement real endpoints
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<void> login({String username, String password}) async {
    assert(username != null);
    assert(password != null);
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  @override
  void logout() {
    // TODO: implement logout
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  @override
  void dispose() => _controller.close();
}

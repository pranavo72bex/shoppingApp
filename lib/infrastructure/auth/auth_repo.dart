import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_repo.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final _controller = StreamController<AuthenticationStatus>();

  final Dio _dio;

  AuthRepo(this._dio);

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

    FormData formData = FormData.fromMap({
      "email": username,
      "password": password,
    });
    final res = await _dio.post('/login', data: formData);
    final decodedData = jsonDecode(res.data);

    if (decodedData["responseCode"] == 1) {
      _controller.add(AuthenticationStatus.authenticated);
    }
    // else {
    //   //handel exception
    //   throw Exception();
    // }

    // await Future.delayed(
    //   const Duration(milliseconds: 300),
    //   () => _controller.add(AuthenticationStatus.authenticated),
    // );
  }

  @override
  void logout() {
    // TODO: implement logout
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  @override
  void dispose() => _controller.close();
}

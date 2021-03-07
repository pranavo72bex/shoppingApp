import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_repo.dart';
import '../../domain/user/i_user_repo.dart';
import '../../domain/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({@required this.authRepo, @required this.userRepo})
      : super(_Unknown()) {
    _authenticationStatusSubscription =
        authRepo.status.listen((authStatus) => add(_StatusChanged(authStatus)));
  }

  final IAuthRepo authRepo;
  final IUserRepo userRepo;
  StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      statusChanged: (e) async* {
        yield await _mapStatusChangedToState(e);
      },
      loginRequested: (e) async* {
        await authRepo.login(username: e.username, password: e.password);
      },
      logoutRequested: (e) async* {
        authRepo.logout();
      },
    );
  }

  Future<AuthState> _mapStatusChangedToState(
    _StatusChanged event,
  ) async {
    switch (event.authenticationStatus) {
      case AuthenticationStatus.unauthenticated:
        return const AuthState.unauthenticated();
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return user != null
            ? AuthState.authenticated(user)
            : const AuthState.unauthenticated();
      default:
        return const AuthState.unknown();
    }
  }

  Future<User> _tryGetUser() async {
    try {
      final user = await userRepo.getUser();
      return user;
    } on Exception {
      return null;
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    authRepo.dispose();
    return super.close();
  }
}

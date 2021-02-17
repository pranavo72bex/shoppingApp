part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.statusChanged(
      AuthenticationStatus authenticationStatus) = _StatusChanged;
  const factory AuthEvent.loginRequested({
    @required String username,
    @required String password,
  }) = _LoginRequested;
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
}

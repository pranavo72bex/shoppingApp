// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _StatusChanged statusChanged(AuthenticationStatus authenticationStatus) {
    return _StatusChanged(
      authenticationStatus,
    );
  }

// ignore: unused_element
  _LoginRequested loginRequested(
      {@required String username, @required String password}) {
    return _LoginRequested(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  _LogoutRequested logoutRequested() {
    return const _LogoutRequested();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult statusChanged(AuthenticationStatus authenticationStatus),
    @required TResult loginRequested(String username, String password),
    @required TResult logoutRequested(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult statusChanged(AuthenticationStatus authenticationStatus),
    TResult loginRequested(String username, String password),
    TResult logoutRequested(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult statusChanged(_StatusChanged value),
    @required TResult loginRequested(_LoginRequested value),
    @required TResult logoutRequested(_LogoutRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult statusChanged(_StatusChanged value),
    TResult loginRequested(_LoginRequested value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$StatusChangedCopyWith<$Res> {
  factory _$StatusChangedCopyWith(
          _StatusChanged value, $Res Function(_StatusChanged) then) =
      __$StatusChangedCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus authenticationStatus});
}

/// @nodoc
class __$StatusChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$StatusChangedCopyWith<$Res> {
  __$StatusChangedCopyWithImpl(
      _StatusChanged _value, $Res Function(_StatusChanged) _then)
      : super(_value, (v) => _then(v as _StatusChanged));

  @override
  _StatusChanged get _value => super._value as _StatusChanged;

  @override
  $Res call({
    Object authenticationStatus = freezed,
  }) {
    return _then(_StatusChanged(
      authenticationStatus == freezed
          ? _value.authenticationStatus
          : authenticationStatus as AuthenticationStatus,
    ));
  }
}

/// @nodoc
class _$_StatusChanged implements _StatusChanged {
  const _$_StatusChanged(this.authenticationStatus)
      : assert(authenticationStatus != null);

  @override
  final AuthenticationStatus authenticationStatus;

  @override
  String toString() {
    return 'AuthEvent.statusChanged(authenticationStatus: $authenticationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusChanged &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationStatus, authenticationStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticationStatus);

  @JsonKey(ignore: true)
  @override
  _$StatusChangedCopyWith<_StatusChanged> get copyWith =>
      __$StatusChangedCopyWithImpl<_StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult statusChanged(AuthenticationStatus authenticationStatus),
    @required TResult loginRequested(String username, String password),
    @required TResult logoutRequested(),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return statusChanged(authenticationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult statusChanged(AuthenticationStatus authenticationStatus),
    TResult loginRequested(String username, String password),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (statusChanged != null) {
      return statusChanged(authenticationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult statusChanged(_StatusChanged value),
    @required TResult loginRequested(_LoginRequested value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult statusChanged(_StatusChanged value),
    TResult loginRequested(_LoginRequested value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements AuthEvent {
  const factory _StatusChanged(AuthenticationStatus authenticationStatus) =
      _$_StatusChanged;

  AuthenticationStatus get authenticationStatus;
  @JsonKey(ignore: true)
  _$StatusChangedCopyWith<_StatusChanged> get copyWith;
}

/// @nodoc
abstract class _$LoginRequestedCopyWith<$Res> {
  factory _$LoginRequestedCopyWith(
          _LoginRequested value, $Res Function(_LoginRequested) then) =
      __$LoginRequestedCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginRequestedCopyWith<$Res> {
  __$LoginRequestedCopyWithImpl(
      _LoginRequested _value, $Res Function(_LoginRequested) _then)
      : super(_value, (v) => _then(v as _LoginRequested));

  @override
  _LoginRequested get _value => super._value as _LoginRequested;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginRequested(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_LoginRequested implements _LoginRequested {
  const _$_LoginRequested({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequested &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginRequestedCopyWith<_LoginRequested> get copyWith =>
      __$LoginRequestedCopyWithImpl<_LoginRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult statusChanged(AuthenticationStatus authenticationStatus),
    @required TResult loginRequested(String username, String password),
    @required TResult logoutRequested(),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return loginRequested(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult statusChanged(AuthenticationStatus authenticationStatus),
    TResult loginRequested(String username, String password),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginRequested != null) {
      return loginRequested(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult statusChanged(_StatusChanged value),
    @required TResult loginRequested(_LoginRequested value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult statusChanged(_StatusChanged value),
    TResult loginRequested(_LoginRequested value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequested implements AuthEvent {
  const factory _LoginRequested(
      {@required String username,
      @required String password}) = _$_LoginRequested;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$LoginRequestedCopyWith<_LoginRequested> get copyWith;
}

/// @nodoc
abstract class _$LogoutRequestedCopyWith<$Res> {
  factory _$LogoutRequestedCopyWith(
          _LogoutRequested value, $Res Function(_LogoutRequested) then) =
      __$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutRequestedCopyWith<$Res> {
  __$LogoutRequestedCopyWithImpl(
      _LogoutRequested _value, $Res Function(_LogoutRequested) _then)
      : super(_value, (v) => _then(v as _LogoutRequested));

  @override
  _LogoutRequested get _value => super._value as _LogoutRequested;
}

/// @nodoc
class _$_LogoutRequested implements _LogoutRequested {
  const _$_LogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult statusChanged(AuthenticationStatus authenticationStatus),
    @required TResult loginRequested(String username, String password),
    @required TResult logoutRequested(),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult statusChanged(AuthenticationStatus authenticationStatus),
    TResult loginRequested(String username, String password),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult statusChanged(_StatusChanged value),
    @required TResult loginRequested(_LoginRequested value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(statusChanged != null);
    assert(loginRequested != null);
    assert(logoutRequested != null);
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult statusChanged(_StatusChanged value),
    TResult loginRequested(_LoginRequested value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AuthEvent {
  const factory _LogoutRequested() = _$_LogoutRequested;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Unknown unknown() {
    return const _Unknown();
  }

// ignore: unused_element
  _Authenticated authenticated(User user) {
    return _Authenticated(
      user,
    );
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unknown(),
    @required TResult authenticated(User user),
    @required TResult unauthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknown(),
    TResult authenticated(User user),
    TResult unauthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknown(_Unknown value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknown(_Unknown value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc
class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unknown(),
    @required TResult authenticated(User user),
    @required TResult unauthenticated(),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknown(),
    TResult authenticated(User user),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknown(_Unknown value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknown(_Unknown value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthState {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unknown(),
    @required TResult authenticated(User user),
    @required TResult unauthenticated(),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknown(),
    TResult authenticated(User user),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknown(_Unknown value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknown(_Unknown value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(User user) = _$_Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unknown(),
    @required TResult authenticated(User user),
    @required TResult unauthenticated(),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unknown(),
    TResult authenticated(User user),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unknown(_Unknown value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(unknown != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unknown(_Unknown value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

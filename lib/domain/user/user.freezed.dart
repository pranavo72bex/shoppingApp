// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String id,
      @required String name,
      @required String email,
      @required String phone,
      @required String status,
      @required @JsonKey(name: 'is_mobile_verified') String isMobileVerified,
      @required @JsonKey(name: 'is_email_verified') String isEmailVerified,
      @required @JsonKey(name: 'created_date') String createdDate,
      @required String token}) {
    return _User(
      id: id,
      name: name,
      email: email,
      phone: phone,
      status: status,
      isMobileVerified: isMobileVerified,
      isEmailVerified: isEmailVerified,
      createdDate: createdDate,
      token: token,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;
  String get name;
  String get email;
  String get phone;
  String get status;
  @JsonKey(name: 'is_mobile_verified')
  String get isMobileVerified;
  @JsonKey(name: 'is_email_verified')
  String get isEmailVerified;
  @JsonKey(name: 'created_date')
  String get createdDate;
  String get token;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      String status,
      @JsonKey(name: 'is_mobile_verified') String isMobileVerified,
      @JsonKey(name: 'is_email_verified') String isEmailVerified,
      @JsonKey(name: 'created_date') String createdDate,
      String token});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object status = freezed,
    Object isMobileVerified = freezed,
    Object isEmailVerified = freezed,
    Object createdDate = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      status: status == freezed ? _value.status : status as String,
      isMobileVerified: isMobileVerified == freezed
          ? _value.isMobileVerified
          : isMobileVerified as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      String status,
      @JsonKey(name: 'is_mobile_verified') String isMobileVerified,
      @JsonKey(name: 'is_email_verified') String isEmailVerified,
      @JsonKey(name: 'created_date') String createdDate,
      String token});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object status = freezed,
    Object isMobileVerified = freezed,
    Object isEmailVerified = freezed,
    Object createdDate = freezed,
    Object token = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      status: status == freezed ? _value.status : status as String,
      isMobileVerified: isMobileVerified == freezed
          ? _value.isMobileVerified
          : isMobileVerified as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.phone,
      @required this.status,
      @required @JsonKey(name: 'is_mobile_verified') this.isMobileVerified,
      @required @JsonKey(name: 'is_email_verified') this.isEmailVerified,
      @required @JsonKey(name: 'created_date') this.createdDate,
      @required this.token})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(phone != null),
        assert(status != null),
        assert(isMobileVerified != null),
        assert(isEmailVerified != null),
        assert(createdDate != null),
        assert(token != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String status;
  @override
  @JsonKey(name: 'is_mobile_verified')
  final String isMobileVerified;
  @override
  @JsonKey(name: 'is_email_verified')
  final String isEmailVerified;
  @override
  @JsonKey(name: 'created_date')
  final String createdDate;
  @override
  final String token;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, status: $status, isMobileVerified: $isMobileVerified, isEmailVerified: $isEmailVerified, createdDate: $createdDate, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isMobileVerified, isMobileVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isMobileVerified, isMobileVerified)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isMobileVerified) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required String id,
      @required String name,
      @required String email,
      @required String phone,
      @required String status,
      @required @JsonKey(name: 'is_mobile_verified') String isMobileVerified,
      @required @JsonKey(name: 'is_email_verified') String isEmailVerified,
      @required @JsonKey(name: 'created_date') String createdDate,
      @required String token}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_mobile_verified')
  String get isMobileVerified;
  @override
  @JsonKey(name: 'is_email_verified')
  String get isEmailVerified;
  @override
  @JsonKey(name: 'created_date')
  String get createdDate;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}

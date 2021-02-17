import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @required String name,
    @required String email,
    @required String phone,
    @required String status,
    @JsonKey(name: 'is_mobile_verified') @required String isMobileVerified,
    @JsonKey(name: 'is_email_verified') @required String isEmailVerified,
    @JsonKey(name: 'created_date') @required String createdDate,
    @required String token,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

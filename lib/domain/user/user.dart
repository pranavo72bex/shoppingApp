import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String id,
    String name,
    String email,
    String phone,
    String status,
    @JsonKey(name: 'is_mobile_verified') String isMobileVerified,
    @JsonKey(name: 'is_email_verified') String isEmailVerified,
    @JsonKey(name: 'created_date') String createdDate,
    String token,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

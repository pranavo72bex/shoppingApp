// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    status: json['status'] as String,
    isMobileVerified: json['is_mobile_verified'] as String,
    isEmailVerified: json['is_email_verified'] as String,
    createdDate: json['created_date'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'status': instance.status,
      'is_mobile_verified': instance.isMobileVerified,
      'is_email_verified': instance.isEmailVerified,
      'created_date': instance.createdDate,
      'token': instance.token,
    };

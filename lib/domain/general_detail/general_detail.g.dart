// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralDetail _$_$_GeneralDetailFromJson(Map<String, dynamic> json) {
  return _$_GeneralDetail(
    responseCode: json['responseCode'] as int,
    responseMessage: json['responseMessage'] as String,
    responsedata: json['responsedata'] == null
        ? null
        : GeneralDetailData.fromJson(
            json['responsedata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GeneralDetailToJson(_$_GeneralDetail instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
      'responsedata': instance.responsedata,
    };

_$_GeneralDetailData _$_$_GeneralDetailDataFromJson(Map<String, dynamic> json) {
  return _$_GeneralDetailData(
    id: json['id'] as String,
    data: json['data'] as String,
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_GeneralDetailDataToJson(
        _$_GeneralDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'status': instance.status,
      'created_at': instance.createdAt,
    };

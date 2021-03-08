import 'package:freezed_annotation/freezed_annotation.dart';
part 'general_detail.g.dart';
part 'general_detail.freezed.dart';

@freezed
abstract class GeneralDetail with _$GeneralDetail {
  const factory GeneralDetail({
    @required int responseCode,
    @required String responseMessage,
    @required GeneralDetailData responsedata,
  }) = _GeneralDetail;
  factory GeneralDetail.fromJson(Map<String, dynamic> json) =>
      _$GeneralDetailFromJson(json);
}

@freezed
abstract class GeneralDetailData with _$GeneralDetailData {
  const factory GeneralDetailData({
    @required String id,
    @required String data,
    @required String status,
    @JsonKey(name: 'created_at') @required String createdAt,
  }) = _GeneralDetailData;

  factory GeneralDetailData.fromJson(Map<String, dynamic> json) =>
      _$GeneralDetailDataFromJson(json);
}

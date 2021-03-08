// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'general_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GeneralDetail _$GeneralDetailFromJson(Map<String, dynamic> json) {
  return _GeneralDetail.fromJson(json);
}

/// @nodoc
class _$GeneralDetailTearOff {
  const _$GeneralDetailTearOff();

// ignore: unused_element
  _GeneralDetail call(
      {@required int responseCode,
      @required String responseMessage,
      @required GeneralDetailData responsedata}) {
    return _GeneralDetail(
      responseCode: responseCode,
      responseMessage: responseMessage,
      responsedata: responsedata,
    );
  }

// ignore: unused_element
  GeneralDetail fromJson(Map<String, Object> json) {
    return GeneralDetail.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralDetail = _$GeneralDetailTearOff();

/// @nodoc
mixin _$GeneralDetail {
  int get responseCode;
  String get responseMessage;
  GeneralDetailData get responsedata;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeneralDetailCopyWith<GeneralDetail> get copyWith;
}

/// @nodoc
abstract class $GeneralDetailCopyWith<$Res> {
  factory $GeneralDetailCopyWith(
          GeneralDetail value, $Res Function(GeneralDetail) then) =
      _$GeneralDetailCopyWithImpl<$Res>;
  $Res call(
      {int responseCode,
      String responseMessage,
      GeneralDetailData responsedata});

  $GeneralDetailDataCopyWith<$Res> get responsedata;
}

/// @nodoc
class _$GeneralDetailCopyWithImpl<$Res>
    implements $GeneralDetailCopyWith<$Res> {
  _$GeneralDetailCopyWithImpl(this._value, this._then);

  final GeneralDetail _value;
  // ignore: unused_field
  final $Res Function(GeneralDetail) _then;

  @override
  $Res call({
    Object responseCode = freezed,
    Object responseMessage = freezed,
    Object responsedata = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode:
          responseCode == freezed ? _value.responseCode : responseCode as int,
      responseMessage: responseMessage == freezed
          ? _value.responseMessage
          : responseMessage as String,
      responsedata: responsedata == freezed
          ? _value.responsedata
          : responsedata as GeneralDetailData,
    ));
  }

  @override
  $GeneralDetailDataCopyWith<$Res> get responsedata {
    if (_value.responsedata == null) {
      return null;
    }
    return $GeneralDetailDataCopyWith<$Res>(_value.responsedata, (value) {
      return _then(_value.copyWith(responsedata: value));
    });
  }
}

/// @nodoc
abstract class _$GeneralDetailCopyWith<$Res>
    implements $GeneralDetailCopyWith<$Res> {
  factory _$GeneralDetailCopyWith(
          _GeneralDetail value, $Res Function(_GeneralDetail) then) =
      __$GeneralDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int responseCode,
      String responseMessage,
      GeneralDetailData responsedata});

  @override
  $GeneralDetailDataCopyWith<$Res> get responsedata;
}

/// @nodoc
class __$GeneralDetailCopyWithImpl<$Res>
    extends _$GeneralDetailCopyWithImpl<$Res>
    implements _$GeneralDetailCopyWith<$Res> {
  __$GeneralDetailCopyWithImpl(
      _GeneralDetail _value, $Res Function(_GeneralDetail) _then)
      : super(_value, (v) => _then(v as _GeneralDetail));

  @override
  _GeneralDetail get _value => super._value as _GeneralDetail;

  @override
  $Res call({
    Object responseCode = freezed,
    Object responseMessage = freezed,
    Object responsedata = freezed,
  }) {
    return _then(_GeneralDetail(
      responseCode:
          responseCode == freezed ? _value.responseCode : responseCode as int,
      responseMessage: responseMessage == freezed
          ? _value.responseMessage
          : responseMessage as String,
      responsedata: responsedata == freezed
          ? _value.responsedata
          : responsedata as GeneralDetailData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GeneralDetail implements _GeneralDetail {
  const _$_GeneralDetail(
      {@required this.responseCode,
      @required this.responseMessage,
      @required this.responsedata})
      : assert(responseCode != null),
        assert(responseMessage != null),
        assert(responsedata != null);

  factory _$_GeneralDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_GeneralDetailFromJson(json);

  @override
  final int responseCode;
  @override
  final String responseMessage;
  @override
  final GeneralDetailData responsedata;

  @override
  String toString() {
    return 'GeneralDetail(responseCode: $responseCode, responseMessage: $responseMessage, responsedata: $responsedata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralDetail &&
            (identical(other.responseCode, responseCode) ||
                const DeepCollectionEquality()
                    .equals(other.responseCode, responseCode)) &&
            (identical(other.responseMessage, responseMessage) ||
                const DeepCollectionEquality()
                    .equals(other.responseMessage, responseMessage)) &&
            (identical(other.responsedata, responsedata) ||
                const DeepCollectionEquality()
                    .equals(other.responsedata, responsedata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(responseCode) ^
      const DeepCollectionEquality().hash(responseMessage) ^
      const DeepCollectionEquality().hash(responsedata);

  @JsonKey(ignore: true)
  @override
  _$GeneralDetailCopyWith<_GeneralDetail> get copyWith =>
      __$GeneralDetailCopyWithImpl<_GeneralDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeneralDetailToJson(this);
  }
}

abstract class _GeneralDetail implements GeneralDetail {
  const factory _GeneralDetail(
      {@required int responseCode,
      @required String responseMessage,
      @required GeneralDetailData responsedata}) = _$_GeneralDetail;

  factory _GeneralDetail.fromJson(Map<String, dynamic> json) =
      _$_GeneralDetail.fromJson;

  @override
  int get responseCode;
  @override
  String get responseMessage;
  @override
  GeneralDetailData get responsedata;
  @override
  @JsonKey(ignore: true)
  _$GeneralDetailCopyWith<_GeneralDetail> get copyWith;
}

GeneralDetailData _$GeneralDetailDataFromJson(Map<String, dynamic> json) {
  return _GeneralDetailData.fromJson(json);
}

/// @nodoc
class _$GeneralDetailDataTearOff {
  const _$GeneralDetailDataTearOff();

// ignore: unused_element
  _GeneralDetailData call(
      {@required String id,
      @required String data,
      @required String status,
      @required @JsonKey(name: 'created_at') String createdAt}) {
    return _GeneralDetailData(
      id: id,
      data: data,
      status: status,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  GeneralDetailData fromJson(Map<String, Object> json) {
    return GeneralDetailData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralDetailData = _$GeneralDetailDataTearOff();

/// @nodoc
mixin _$GeneralDetailData {
  String get id;
  String get data;
  String get status;
  @JsonKey(name: 'created_at')
  String get createdAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeneralDetailDataCopyWith<GeneralDetailData> get copyWith;
}

/// @nodoc
abstract class $GeneralDetailDataCopyWith<$Res> {
  factory $GeneralDetailDataCopyWith(
          GeneralDetailData value, $Res Function(GeneralDetailData) then) =
      _$GeneralDetailDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String data,
      String status,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$GeneralDetailDataCopyWithImpl<$Res>
    implements $GeneralDetailDataCopyWith<$Res> {
  _$GeneralDetailDataCopyWithImpl(this._value, this._then);

  final GeneralDetailData _value;
  // ignore: unused_field
  final $Res Function(GeneralDetailData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
    Object status = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      data: data == freezed ? _value.data : data as String,
      status: status == freezed ? _value.status : status as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

/// @nodoc
abstract class _$GeneralDetailDataCopyWith<$Res>
    implements $GeneralDetailDataCopyWith<$Res> {
  factory _$GeneralDetailDataCopyWith(
          _GeneralDetailData value, $Res Function(_GeneralDetailData) then) =
      __$GeneralDetailDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String data,
      String status,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$GeneralDetailDataCopyWithImpl<$Res>
    extends _$GeneralDetailDataCopyWithImpl<$Res>
    implements _$GeneralDetailDataCopyWith<$Res> {
  __$GeneralDetailDataCopyWithImpl(
      _GeneralDetailData _value, $Res Function(_GeneralDetailData) _then)
      : super(_value, (v) => _then(v as _GeneralDetailData));

  @override
  _GeneralDetailData get _value => super._value as _GeneralDetailData;

  @override
  $Res call({
    Object id = freezed,
    Object data = freezed,
    Object status = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_GeneralDetailData(
      id: id == freezed ? _value.id : id as String,
      data: data == freezed ? _value.data : data as String,
      status: status == freezed ? _value.status : status as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GeneralDetailData implements _GeneralDetailData {
  const _$_GeneralDetailData(
      {@required this.id,
      @required this.data,
      @required this.status,
      @required @JsonKey(name: 'created_at') this.createdAt})
      : assert(id != null),
        assert(data != null),
        assert(status != null),
        assert(createdAt != null);

  factory _$_GeneralDetailData.fromJson(Map<String, dynamic> json) =>
      _$_$_GeneralDetailDataFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'GeneralDetailData(id: $id, data: $data, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralDetailData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$GeneralDetailDataCopyWith<_GeneralDetailData> get copyWith =>
      __$GeneralDetailDataCopyWithImpl<_GeneralDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeneralDetailDataToJson(this);
  }
}

abstract class _GeneralDetailData implements GeneralDetailData {
  const factory _GeneralDetailData(
          {@required String id,
          @required String data,
          @required String status,
          @required @JsonKey(name: 'created_at') String createdAt}) =
      _$_GeneralDetailData;

  factory _GeneralDetailData.fromJson(Map<String, dynamic> json) =
      _$_GeneralDetailData.fromJson;

  @override
  String get id;
  @override
  String get data;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$GeneralDetailDataCopyWith<_GeneralDetailData> get copyWith;
}

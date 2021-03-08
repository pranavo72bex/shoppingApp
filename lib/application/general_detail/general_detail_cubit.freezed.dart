// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'general_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GeneralDetailStateTearOff {
  const _$GeneralDetailStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(GeneralDetail generalDetail) {
    return _Loaded(
      generalDetail,
    );
  }

// ignore: unused_element
  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralDetailState = _$GeneralDetailStateTearOff();

/// @nodoc
mixin _$GeneralDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(GeneralDetail generalDetail),
    @required TResult failure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(GeneralDetail generalDetail),
    TResult failure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GeneralDetailStateCopyWith<$Res> {
  factory $GeneralDetailStateCopyWith(
          GeneralDetailState value, $Res Function(GeneralDetailState) then) =
      _$GeneralDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeneralDetailStateCopyWithImpl<$Res>
    implements $GeneralDetailStateCopyWith<$Res> {
  _$GeneralDetailStateCopyWithImpl(this._value, this._then);

  final GeneralDetailState _value;
  // ignore: unused_field
  final $Res Function(GeneralDetailState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$GeneralDetailStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GeneralDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(GeneralDetail generalDetail),
    @required TResult failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(GeneralDetail generalDetail),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GeneralDetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({GeneralDetail generalDetail});

  $GeneralDetailCopyWith<$Res> get generalDetail;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$GeneralDetailStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object generalDetail = freezed,
  }) {
    return _then(_Loaded(
      generalDetail == freezed
          ? _value.generalDetail
          : generalDetail as GeneralDetail,
    ));
  }

  @override
  $GeneralDetailCopyWith<$Res> get generalDetail {
    if (_value.generalDetail == null) {
      return null;
    }
    return $GeneralDetailCopyWith<$Res>(_value.generalDetail, (value) {
      return _then(_value.copyWith(generalDetail: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.generalDetail) : assert(generalDetail != null);

  @override
  final GeneralDetail generalDetail;

  @override
  String toString() {
    return 'GeneralDetailState.loaded(generalDetail: $generalDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.generalDetail, generalDetail) ||
                const DeepCollectionEquality()
                    .equals(other.generalDetail, generalDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalDetail);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(GeneralDetail generalDetail),
    @required TResult failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(generalDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(GeneralDetail generalDetail),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(generalDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GeneralDetailState {
  const factory _Loaded(GeneralDetail generalDetail) = _$_Loaded;

  GeneralDetail get generalDetail;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$GeneralDetailStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'GeneralDetailState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult loaded(GeneralDetail generalDetail),
    @required TResult failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult loaded(GeneralDetail generalDetail),
    TResult failure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GeneralDetailState {
  const factory _Failure() = _$_Failure;
}

part of 'general_detail_cubit.dart';

@freezed
abstract class GeneralDetailState with _$GeneralDetailState {
  const factory GeneralDetailState.loading() = _Loading;
  const factory GeneralDetailState.loaded(GeneralDetail generalDetail) =
      _Loaded;
  const factory GeneralDetailState.failure() = _Failure;
}

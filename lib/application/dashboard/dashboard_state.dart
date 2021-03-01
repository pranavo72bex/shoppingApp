part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.failure() = _Failure;
  const factory DashboardState.loaded({
    @required Dashboard dashboard,
  }) = _Loaded;
}

part of 'popular_deals_bloc.dart';

@freezed
abstract class PopularDealsEvent with _$PopularDealsEvent {
  const factory PopularDealsEvent.started() = _Started;
}

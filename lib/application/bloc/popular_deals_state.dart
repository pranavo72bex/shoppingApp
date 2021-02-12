part of 'popular_deals_bloc.dart';

@freezed
abstract class PopularDealsState with _$PopularDealsState {
  const factory PopularDealsState.loading() = _Loading;
  const factory PopularDealsState.failure() = _Failure;
  const factory PopularDealsState.loaded({
    @required List<Product> productList,
  }) = _Loaded;
}

part of 'category_bloc.dart';

@freezed
abstract class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getTopProductsstarted() = _GetTopProductsStarted;
  const factory CategoryEvent.getSalesProductsstarted() =
      _GetSalesProductsStarted;
  const factory CategoryEvent.getFeaturedProductsstarted() =
      _GetFeaturedProductsStarted;

  static getFeaturedProducts() {}
}

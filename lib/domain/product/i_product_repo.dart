import 'package:shoppingApp/domain/product/product.dart';

abstract class IProductRepo {
  Future<List<Product>> getPopularDeals();
}

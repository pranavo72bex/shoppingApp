import 'package:shoppingApp/domain/product.dart';

abstract class IProductRepo {
  Future<List<Product>> getPopularDeals();
}

import '../dashboard/dashboard.dart';
import 'product.dart';

abstract class IProductRepo {
  Future<Dashboard> getDashboardData();

  Future<List<Product>> getTopProducts();
  Future<List<Product>> getSalesProducts();
  Future<List<Product>> getFeaturedProducts();
}

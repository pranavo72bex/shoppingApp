import 'package:shoppingApp/domain/dashboard/dashboard.dart';
import 'package:shoppingApp/domain/product/product.dart';

abstract class IProductRepo {
  Future<Dashboard> getDashboardData();
}

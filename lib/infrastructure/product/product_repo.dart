import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/product/i_product_repo.dart';
import 'package:shoppingApp/domain/product/product.dart';

@LazySingleton(as: IProductRepo)
class ProductRepo implements IProductRepo {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://4percentmedical.com/dks/grocery/Api/Restapi/',
      headers: {
        'Authorization': 'LS',
        'device_id': '12345',
        'device_version': '1.0',
        'device_type': '1',
        'store_id': '14',
      },
    ),
  );

  @override
  Future<List<Product>> getPopularDeals() async {
    final res = await _dio.get('/getTopProducts');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);

      print(decodedData);
      return (decodedData['responsedata'] as List)
          .cast<Map<String, dynamic>>()
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }
}

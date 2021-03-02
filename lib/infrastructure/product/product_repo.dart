import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/dashboard/dashboard.dart';
import 'package:shoppingApp/domain/product/i_product_repo.dart';

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
  Future<Dashboard> getDashboardData() async {
    final res = await _dio.get('/dashboard');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);
      //TODO when not using freezed data class usind jsonDecode cause exception
      // need to find when should use jsonDecode() and when not to use
      // print(decodedData);
      return Dashboard.fromJson(decodedData);
      // return (decodedData['responsedata'] as List)
      //     .cast<Map<String, dynamic>>()
      //     .map((e) => Product.fromJson(e))
      //     .toList();
    } else {
      throw Exception();
    }
  }
}

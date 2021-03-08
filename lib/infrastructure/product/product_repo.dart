import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/dashboard/dashboard.dart';
import '../../domain/product/i_product_repo.dart';
import '../../domain/product/product.dart';

@LazySingleton(as: IProductRepo)
class ProductRepo implements IProductRepo {
  final Dio _dio;

  ProductRepo(this._dio);

  @override
  Future<Dashboard> getDashboardData() async {
    final res = await _dio.get('/dashboard');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);
      // ignore: todo
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

  @override
  Future<List<Product>> getTopProducts() async {
    final res = await _dio.get('getTopProducts');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);
      // ignore: todo
      //TODO when not using freezed data class usind jsonDecode cause exception
      // need to find when should use jsonDecode() and when not to use
      // print(decodedData);
      // return Dashboard.fromJson(decodedData);
      return (decodedData['responsedata'] as List)
          .cast<Map<String, dynamic>>()
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<Product>> getSalesProducts() async {
    final res = await _dio.get('getSaleProducts');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);
      // ignore: todo
      //TODO when not using freezed data class usind jsonDecode cause exception
      // need to find when should use jsonDecode() and when not to use
      // print(decodedData);
      // return Dashboard.fromJson(decodedData);
      return (decodedData['responsedata'] as List)
          .cast<Map<String, dynamic>>()
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<Product>> getFeaturedProducts() async {
    final res = await _dio.get('getFeaturedProducts');
    if (res.statusCode == 200) {
      // print(res.data['responsedata']);
      final decodedData = jsonDecode(res.data);
      // ignore: todo
      //TODO when not using freezed data class usind jsonDecode cause exception
      // need to find when should use jsonDecode() and when not to use
      // print(decodedData);
      // return Dashboard.fromJson(decodedData);
      return (decodedData['responsedata'] as List)
          .cast<Map<String, dynamic>>()
          .map((e) => Product.fromJson(e))
          .toList();
    } else {
      throw Exception();
    }
  }
}

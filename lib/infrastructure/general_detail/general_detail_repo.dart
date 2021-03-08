import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/general_detail/general_detail.dart';
import 'package:shoppingApp/domain/general_detail/i_general_detail_repo.dart';

@LazySingleton(as: IGeneralDetailRepo)
class GeneralDetailRepo implements IGeneralDetailRepo {
  final Dio _dio;

  GeneralDetailRepo(this._dio);
  @override
  Future<GeneralDetail> getAboutUs() async {
    final res = await _dio.get('/aboutUs');
    if (res.statusCode == 200) {
      final decodedData = jsonDecode(res.data);
      return GeneralDetail.fromJson(decodedData);
    } else {
      throw Exception();
    }
  }

  @override
  Future<GeneralDetail> getFaq() async {
    final res = await _dio.get('/faq');
    if (res.statusCode == 200) {
      final decodedData = jsonDecode(res.data);
      return GeneralDetail.fromJson(decodedData);
    } else {
      throw Exception();
    }
  }

  @override
  Future<GeneralDetail> getPirvacyPolicy() async {
    //no api given
    // final res = await _dio.get('/privacyPolicy');
    // if (res.statusCode == 200) {
    //   final decodedData = jsonDecode(res.data);
    //   return GeneralDetail.fromJson(decodedData);
    // } else {
    //   throw Exception();
    // }
  }

  @override
  Future<GeneralDetail> getTermsAndConditions() async {
    final res = await _dio.get('/termsAndContitions');
    if (res.statusCode == 200) {
      final decodedData = jsonDecode(res.data);
      return GeneralDetail.fromJson(decodedData);
    } else {
      throw Exception();
    }
  }
}

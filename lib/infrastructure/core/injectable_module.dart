import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio(BaseOptions(
        baseUrl: "http://4percentmedical.com/dks/grocery/Api/Restapi/",
        headers: {
          'Authorization': 'LS',
          'device_id': '12345',
          'device_version': '1.0',
          'device_type': '1',
          'store_id': '14'
        },
      ));
}

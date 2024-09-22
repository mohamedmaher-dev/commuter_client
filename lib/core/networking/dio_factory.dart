import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/local_storage/local_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? _dio;

  static Dio getDio() {
    if (_dio == null) {
      const Duration timout = Duration(seconds: 30);
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timout
        ..options.sendTimeout = timout
        ..options.receiveTimeout = timout
        ..options.headers['Authorization'] =
            'Bearer ${LocalStorageService.userSecretDataModel.userToken}'
        ..interceptors.add(
          PrettyDioLogger(
            request: true,
            requestBody: true,
            responseBody: true,
            requestHeader: true,
          ),
        );
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void setToken(String token) {
    di<Dio>().options.headers['Authorization'] = 'Bearer $token';
  }
}

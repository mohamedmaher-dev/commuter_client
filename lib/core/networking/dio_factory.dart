import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? _dio;

  static Dio getDio() {
    if (_dio == null) {
      const Duration timout = Duration(seconds: 10);
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timout
        ..options.sendTimeout = timout
        ..options.receiveTimeout = timout
        ..interceptors.add(
          PrettyDioLogger(
            request: true,
            requestBody: true,
            responseBody: true,
          ),
        );
      return _dio!;
    } else {
      return _dio!;
    }
  }
}

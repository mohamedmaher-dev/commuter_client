import 'package:dio/dio.dart';

class ApiErrorModel {
  final String msg;
  final int? code;
  ApiErrorModel({required this.msg, required this.code});

  factory ApiErrorModel.fromUnknown({required Object e}) {
    return ApiErrorModel(msg: e.toString(), code: 0);
  }

  factory ApiErrorModel.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(
          msg: "Connection Timeout",
          code: 0,
        );
      case DioExceptionType.sendTimeout:
        return ApiErrorModel(
          msg: "Send Timeout",
          code: 0,
        );
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
          msg: "Receive Timeout",
          code: 0,
        );

      case DioExceptionType.badCertificate:
        return ApiErrorModel(
          msg: "Bad Certificate",
          code: 0,
        );

      case DioExceptionType.badResponse:
        return _fromBadResponse(dioException: dioException);

      case DioExceptionType.cancel:
        return ApiErrorModel(
          msg: "Connection Canceled",
          code: 0,
        );

      case DioExceptionType.connectionError:
        return ApiErrorModel(
          msg: "Connection Error",
          code: 0,
        );

      case DioExceptionType.unknown:
        return ApiErrorModel(
          msg: "Unknown Error",
          code: 0,
        );
    }
  }
}

ApiErrorModel _fromBadResponse({required DioException dioException}) {
  int code = dioException.response!.statusCode!;
  Response response = dioException.response!;
  if (code == 404) {
    return ApiErrorModel(msg: response.data['message'], code: code);
  } else if (code == 500) {
    return ApiErrorModel(msg: response.data['message'], code: code);
  } else if (code == 401) {
    return ApiErrorModel(msg: response.data['message'], code: code);
  } else if (code == 400) {
    try {
      return ApiErrorModel(msg: response.data['errors'][0]['msg'], code: code);
    } catch (e) {
      return ApiErrorModel(msg: response.data['message'], code: code);
    }
  } else {
    return ApiErrorModel(msg: "Unknown Error", code: code);
  }
}

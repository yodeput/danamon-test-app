import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppException implements Exception {
  final String? message;
  final int? code;

  AppException([
    this.code,
    this.message,
  ]);

  @override
  String toString() {
    return "$code$message";
  }

  factory AppException.create(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        {
          return BadRequestException(-1, "Canceled");
        }
      case DioExceptionType.connectionTimeout:
        {
          return BadRequestException(-1, "Connection Timeout");
        }
      case DioExceptionType.sendTimeout:
        {
          return BadRequestException(-1, "Request Timeout");
        }
      case DioExceptionType.receiveTimeout:
        {
          return BadRequestException(-1, "Receive Timeout");
        }
      case DioExceptionType.badResponse:
        {
          try {
            int? errCode = error.response?.statusCode;
            // String errMsg = error.response.statusMessage;
            // return ErrorEntity(code: errCode, message: errMsg);
            switch (errCode) {
              case 400:
                {
                  var res = error.response?.data as Map<String, dynamic>;
                  return UnauthorisedException(
                      errCode, res["message"].toString());
                }
              case 401:
              case 403:
                {
                  /* showFullErrorDialog(
                      message: "Session anda telah habis, silahkan untuk Login kembali.",
                      buttonText: t.button.close,
                      buttonClick: () {
                        AccountRepo.to.clearData();
                        Get.offAllNamed(AppRoutes.APP);
                      });*/
                  return UnauthorisedException(errCode, "Unauthorised");
                }
              case 404:
                {
                  return UnauthorisedException(errCode, "API Not Found");
                }
              case 405:
                {
                  return UnauthorisedException(errCode, "Method Not Allowed");
                }
              case 500:
              case 502:
              case 503:
              case 505:
                {
                  return UnauthorisedException(
                      errCode, "Internal server Error");
                }

              default:
                {
                  // return ErrorEntity(code: errCode, message: "未知错误");
                  return AppException(errCode, error.response?.statusMessage);
                }
            }
          } on Exception catch (_) {
            return AppException(-1, _.toString());
          }
        }

      default:
        {
          return AppException(-1, error.message);
          // return AppException(-1, error.message);
        }
    }
  }
}

/// 请求错误
class BadRequestException extends AppException {
  BadRequestException([int? code, String? message]) : super(code, message);
}

/// 未认证异常
class UnauthorisedException extends AppException {
  UnauthorisedException([int? code, String? message]) : super(code, message);
}

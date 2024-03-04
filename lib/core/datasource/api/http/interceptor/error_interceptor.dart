import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../app_except.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    var dioErr = err.copyWith(error: null);
    if (!kIsWeb) {
      AppException appException = AppException.create(err);
      var list5xx = [500, 501, 502, 503, 504, 505, 404];
      /*if (list5xx.firstWhereOrNull((e) => e == err.response?.statusCode) !=
          null) {
        showSnackBarError(
            t.message.error.something_code(error: appException.message ?? ""));
      }*/
      dioErr = err.copyWith(error: appException);
    }
    super.onError(dioErr, handler);
  }
}

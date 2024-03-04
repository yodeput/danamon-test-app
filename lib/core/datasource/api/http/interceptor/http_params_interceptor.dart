import 'package:dio/dio.dart';
import 'package:danamonTest/common/constant.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';

import 'package:danamonTest/core/datasource/local/storage_provider.dart';

class HttpParamsInterceptor extends Interceptor with ProviderLoggy {
  HttpParamsInterceptor(this._storageProvider);

  final StorageProvider _storageProvider;
  static const APPID = 'App-ID';
  static const TOKEN = 'x-api-key';
  static const VERSION = 'X-Version';
  static const ONESIGNAL = 'X-Player';
  static const CONTENT = 'Content-Type';
  static const ACCEPT = 'Accept';
  static const JSON = 'application/json';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var headers = options.headers;

    headers[CONTENT] = JSON;
    headers[ACCEPT] = JSON;

    final token = _storageProvider.getString(StorageConstant.TOKEN);
    if (token.isNotEmpty) {
      headers[TOKEN] = '$token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}

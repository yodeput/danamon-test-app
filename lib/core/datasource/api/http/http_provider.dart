import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/start.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import '../../local/storage_provider.dart';
import 'interceptor/error_interceptor.dart';
import 'interceptor/http_params_interceptor.dart';

class HttpProvider {
  static const int CONNECT_TIMEOUT = 60000;
  static const int RECEIVE_TIMEOUT = 60000;
  static const String contentType = "content-type";
  static const String applicationJson = "application/json";
  static const String accept = "accept";
  static const String authorization = "authorization";
  static const String defaultLanguage = "language";

  Future<Dio> getDio() async {
    final StorageProvider _storageProvider = instance<StorageProvider>();

    Dio dio = Dio();
    String baseUrl = dotenv.env["BASE_URL"]!;
    final Map<String, dynamic> headers = {
      contentType: applicationJson,
      accept: applicationJson,
    };
    dio.options = BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
        sendTimeout: const Duration(milliseconds: CONNECT_TIMEOUT),
        receiveTimeout: const Duration(milliseconds: RECEIVE_TIMEOUT));
    dio.interceptors.add(HttpParamsInterceptor(_storageProvider));
    dio.interceptors.add(ErrorInterceptor());
    // dio.interceptors.add(
    //   TalkerDioLogger(
    //     talker: talker,
    //     settings: const TalkerDioLoggerSettings(
    //       printRequestHeaders: true,
    //       printResponseHeaders: true,
    //       printResponseMessage: true,
    //     ),
    //   ),
    // );

    return dio;
  }
}

import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/core/datasource/api/http/error_handler.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/api/service/photo_service.dart';
import 'package:danamonTest/feature/home/photos/model/photo.dart';
import 'package:dio/dio.dart';

class PhotosProvider with ProviderLoggy {
  PhotosProvider({required this.service});

  final PhotoService service;

  List<Photo> lastCallData = [];
  int lastCallPage = 0;

  Future<List<Photo>?> getPhotos({
    required int page,
    required int limit,
  }) async {
    try {
      if (lastCallPage == page) {
        return lastCallData;
      }
      final result = await service.getPhotos(page, limit);
      lastCallData = result;
      lastCallPage = page;
      return result;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      loggy.error('getPhotos: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }
}

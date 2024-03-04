import 'package:danamonTest/feature/home/photos/model/photo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'package:danamonTest/core/model/base_reponse/base_response.dart';
import 'package:danamonTest/core/model/news/news.dart';

part 'photo_service.g.dart';

@RestApi()
abstract class PhotoService {
  factory PhotoService(Dio dio, {String baseUrl}) = _PhotoService;
  @GET('photos')
  Future<List<Photo>> getPhotos(
    @Query('_page') int page,
    @Query('_limit') int limit,
  );
}

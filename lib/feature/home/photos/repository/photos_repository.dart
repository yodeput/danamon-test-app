import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/api/http/failures.dart';
import 'package:danamonTest/feature/home/photos/model/photo.dart';

import 'package:danamonTest/feature/home/photos/provider/photos_provider.dart';
import 'package:dartz/dartz.dart';

class PhotosRepository with RepositoryLoggy {
  PhotosRepository({required this.provider});

  final PhotosProvider provider;

  Future<Either<Failure, List<Photo>?>> getPhotos(
      {required int page, required int limit}) async {
    try {
      final result = await provider.getPhotos(page: page, limit: limit);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}

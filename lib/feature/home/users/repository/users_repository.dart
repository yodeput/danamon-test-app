import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/api/http/failures.dart';
import 'package:danamonTest/feature/home/users/model/user_data/user_data.dart';
import 'package:danamonTest/feature/home/users/provider/users_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UsersRepository with RepositoryLoggy {
  UsersRepository({required this.provider});

  final UsersProvider provider;

  Future<Either<Failure, List<User>?>> getDataList(
      {required int page, required int limit}) async {
    try {
      final result = await provider.getDataList(page: page, limit: limit);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  Future<Either<Failure, UserResponse>> createData(
      Map<String, String> params) async {
    try {
      final result = await provider.createData(params);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  Future<Either<Failure, UserResponse>> updateData(
      Map<String, String> params) async {
    try {
      final result = await provider.updateData(params);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  Future<Either<Failure, void>> deleteData(String userId) async {
    try {
      final result = await provider.deleteData(userId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/api/http/failures.dart';
import 'package:danamonTest/core/datasource/local/storage_provider.dart';
import 'package:danamonTest/common/logger/logger.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/user/provider/user_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepository with RepositoryLoggy {
  UserRepository({
    required this.provider,
  });

  final UserProvider provider;

  Stream<User?> getUserStream() {
    return provider.getUserStream();
  }

  Future<Either<Failure, AuthResponse?>> login(
      String email, String password) async {
    try {
      final result = await provider.login(email, password);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  Future<Either<Failure, dynamic?>> register(Map<String, String> params) async {
    try {
      final result = await provider.register(params);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  Future<Either<Failure, void>> logout() async {
    try {
      final result = await provider.logout();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}

import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/core/datasource/api/http/error_handler.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/supabase/users_source.dart';
import 'package:danamonTest/feature/home/users/model/user_data/user_data.dart';
import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UsersProvider with ProviderLoggy {
  const UsersProvider({required this.service});

  final UsersSource service;

  Future<List<User>?> getDataList({
    required int page,
    required int limit,
  }) async {
    try {
      final result = await service.getDataList(page, limit);
      return result;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }

  Future<UserResponse> createData(Map<String, String> params) async {
    try {
      final result = await service.createData(params: params);
      return result;
    } catch (e) {
      loggy.error('register: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }

  Future<UserResponse> updateData(Map<String, String> params) async {
    try {
      final result = await service.updateData(params: params);
      return result;
    } catch (e) {
      loggy.error('register: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }

  Future<void> deleteData(String userId) async {
    try {
      final result = await service.deleteData(userId: userId);
      return result;
    } catch (e) {
      loggy.error('register: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }
}

import 'package:danamonTest/core/datasource/api/http/error_handler.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:dio/src/form_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UsersSource with ProviderLoggy {
  UsersSource(this.supabase);

  final SupabaseClient supabase;

  Future<List<User>> getDataList(int page, int limit) async {
    int start = (page - 1) * limit;
    int end = start + limit;
    try {
      final data = await supabase.auth.admin.listUsers();
      return data;
    } on Exception catch (e) {
      loggy.error('SupabaseDb getDataList: ${e.toString()}', e);
      throw ServerException(e.toString(), 500);
    }
  }

  Future<UserResponse> createData({required Map<String, String> params}) async {
    try {
      final data = await supabase.auth.admin.createUser(AdminUserAttributes(
        email: params['email']!,
        password: params['password']!,
        userMetadata: {
          'name': params['name']!,
          'access_level': params['role']!
        },
      ));
      return data;
    } on Exception catch (e) {
      loggy.error('SupabaseDb getData: ${e.toString()}', e);
      throw ServerException(e.toString(), 500);
    }
  }

  Future<UserResponse> updateData({required Map<String, String> params}) async {
    try {
      final data = await supabase.auth.admin.updateUserById(
        params['id']!,
        attributes: AdminUserAttributes(email: params['email']!, userMetadata: {
          'name': params['name']!,
          'access_level': params['role']!
        }),
      );
      return data;
    } on Exception catch (e) {
      loggy.error('SupabaseDb getData: ${e.toString()}', e);
      throw ServerException(e.toString(), 500);
    }
  }

  Future<void> deleteData({required String userId}) async {
    try {
      final data = await supabase.auth.admin.deleteUser(userId);
      return data;
    } on Exception catch (e) {
      loggy.error('SupabaseDb getData: ${e.toString()}', e);
      throw ServerException(e.toString(), 500);
    }
  }
}

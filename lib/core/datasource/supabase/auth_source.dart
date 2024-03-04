import 'package:danamonTest/core/datasource/api/http/error_handler.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:dio/src/form_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthSource with ProviderLoggy {
  AuthSource(this.supabase);

  final SupabaseClient supabase;

  Future<AuthResponse?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final AuthResponse response = await supabase.auth
          .signInWithPassword(email: email, password: password);
      return response;
    } on Exception catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }

  Future<void> sigOut({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabase.auth.signOut();
      return response;
    } on Exception catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }

  Future<dynamic> register({
    required String email,
    required String password,
    required Map<String, dynamic> metadata,
  }) async {
    try {
      if (metadata['access_level'] == 'Admin') {
        final response =
            await supabase.auth.admin.createUser(AdminUserAttributes(
          email: email,
          password: password,
          userMetadata: metadata,
          emailConfirm: true,
        ));
        return response;
      }
      final response = await supabase.auth.signUp(
        email: email,
        password: password,
        data: metadata,
      );
      return response;
    } on Exception catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }
}

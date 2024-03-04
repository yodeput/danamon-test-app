import 'dart:async';
import 'dart:convert';

import 'package:danamonTest/core/datasource/supabase/auth_source.dart';
import 'package:dio/dio.dart';
import 'package:danamonTest/common/constant.dart';
import 'package:danamonTest/core/datasource/api/http/error_handler.dart';
import 'package:danamonTest/core/datasource/api/http/exeption.dart';
import 'package:danamonTest/core/datasource/local/storage_provider.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/core/model/base_reponse/base_response_map.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserProvider with ProviderLoggy {
  UserProvider({required this.provider, required this.service});

  final StorageProvider provider;
  final AuthSource service;

  final _userStream = StreamController<User?>.broadcast();
  User? userData;

  Stream<User?> getUserStream() => _userStream.stream;

  Future<void> saveUserData({Session? session, User? userData}) async {
    if (session != null) {
      await provider.setString(
          StorageConstant.TOKEN, jsonEncode(session.toJson()));
    }
    if (userData != null) {
      _userStream.add(userData);
      this.userData = userData;
      await provider.setString(
          StorageConstant.USER, jsonEncode(userData.toJson()));
    }
  }

  Future<void> clearData() async {
    await provider.setString(StorageConstant.TOKEN, '');
    await provider.setString(StorageConstant.USER, '');
    _userStream.add(null);
  }

  String getToken() => provider.getString(StorageConstant.TOKEN);

  Future<void> getUser() async {
    final userString = provider.getString(StorageConstant.USER);
    final tokenString = provider.getString(StorageConstant.TOKEN);
    loggy
      ..info('User >> $userString')
      ..info('TokenData >> $tokenString');
    if (userString.isNotEmpty) {
      final user =
          User.fromJson(jsonDecode(userString) as Map<String, dynamic>);
      userData = user;
      await networkDelay();
      _userStream.add(user);
    } else {
      await networkDelay();
      _userStream.add(null);
    }
  }

  Future<AuthResponse?> login(String email, String password) async {
    try {
      final result = await service.signIn(email: email, password: password);
      if (result?.user == null) {
        throw ServerException("Email atau Password salah.", 500);
      }
      await saveUserData(session: result?.session, userData: result?.user);

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
      loggy.error('login: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }

  Future<dynamic?> register(Map<String, String> params) async {
    try {
      final result = await service.register(
          email: params['email']!,
          password: params['password']!,
          metadata: {'name': params['name']!, 'access_level': params['role']!});
      if (result?.user == null) {
        throw ServerException("Email sudah terdaftar.", 500);
      }

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
      loggy.error('register: ${e.toString()}', e);
      throw ServerException(e.toString(), null);
    }
  }

  // Future<BaseResponseMap> resetPassword(Map<String, String> params) async {
  //   try {
  //     final result = await service.resetPassword(FormData.fromMap(params));
  //     if (result.status == false) {
  //       throw ServerException(result.message.removeMessageHtmlTag(), 500);
  //     }
  //     return result;
  //   } on DioException catch (e) {
  //     if (e.type == DioExceptionType.cancel) {
  //       throw CancelTokenException(handleDioError(e), e.response?.statusCode);
  //     } else {
  //       throw ServerException(handleDioError(e), e.response?.statusCode);
  //     }
  //   } on ServerException {
  //     rethrow;
  //   } catch (e) {
  //     loggy.error('register: ${e.toString()}', e);
  //     throw ServerException(e.toString(), null);
  //   }
  // }

  // Future<BaseResponseMap> changePassword(Map<String, String> params) async {
  //   try {
  //     final result = await service.changePassword(
  //         userData?.userId ?? '', FormData.fromMap(params));
  //     if (result.status == false) {
  //       final msg = result.message.removeMessageHtmlTag();
  //       if (msg.toLowerCase().contains('unable')) {
  //         throw ServerException('Password lama tidak sesuai', 500);
  //       } else if (msg.toLowerCase().contains('field does not match')) {
  //         throw ServerException(
  //             'Password Baru dan Konfirmasi tidak sesuai', 500);
  //       } else if (msg.toLowerCase().contains('diganti')) {
  //         return result;
  //       }
  //       throw ServerException(msg, 500);
  //     }
  //     return result;
  //   } on DioException catch (e) {
  //     if (e.type == DioExceptionType.cancel) {
  //       throw CancelTokenException(handleDioError(e), e.response?.statusCode);
  //     } else {
  //       throw ServerException(handleDioError(e), e.response?.statusCode);
  //     }
  //   } on ServerException {
  //     rethrow;
  //   } catch (e) {
  //     loggy.error('register: ${e.toString()}', e);
  //     throw ServerException(e.toString(), null);
  //   }
  // }

  // Future<User?> changeProfile(Map<String, String> params) async {
  //   try {
  //     final result = await service.changeProfile(
  //         userData?.userId ?? '', FormData.fromMap(params));
  //     if (result.status == false) {
  //       throw ServerException(result.message.removeMessageHtmlTag(), 500);
  //     }
  //     final dataUser = result.data;
  //     final user = User(
  //       userId: dataUser?['id'] as String,
  //       name: dataUser?['first_name'] as String,
  //       email: dataUser?['email'] as String,
  //       username: dataUser?['username'] as String,
  //       phone: dataUser?['phone'] as String,
  //     );
  //     await saveUserData(userData: user);
  //     return user;
  //   } on DioException catch (e) {
  //     if (e.type == DioExceptionType.cancel) {
  //       throw CancelTokenException(handleDioError(e), e.response?.statusCode);
  //     } else {
  //       throw ServerException(handleDioError(e), e.response?.statusCode);
  //     }
  //   } on ServerException {
  //     rethrow;
  //   } catch (e) {
  //     loggy.error('register: ${e.toString()}', e);
  //     throw ServerException(e.toString(), null);
  //   }
  // }

  Future<BaseResponseMap> logout() async {
    try {
      //final result = await service.logout();
      await networkDelay();
      await clearData();
      return BaseResponseMap();
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }

  Future<void> networkDelay() async {
    await Future<void>.delayed(const Duration(milliseconds: 1500));
  }
}

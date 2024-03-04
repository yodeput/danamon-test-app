import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/core/datasource/api/http/failures.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with BlocLoggy {
  UserCubit({
    required this.repository,
  }) : super(const UserInitial()) {
    load();
  }

  final UserRepository repository;
  late User user;

  StreamSubscription<User?>? _userSubscription;

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  Future<void> signOut() async {
    emit(const SignoutLoading());
    final result = await repository.logout();
    result.fold((l) {
      emit(SignoutError(errorMessage: l.errorMessage));
      if (l is ServerFailure && l.statusCode == '401') {}
    }, (r) {
      emit(const SignoutSuccess());
    });
  }

  Future<void> load() async {
    _userSubscription = repository.getUserStream().listen(_onUser);
  }

  void _onUser(User? user) {
    if (user != null) {
      this.user = user;
      emit(UserLoaded(user: user));
      return;
    }
    emit(const UserEmpty());
  }

  void operationComplete() {
    emit(UserLoaded(user: user));
  }

  // Future<void> changePassword({
  //   required String old_password,
  //   required String new_password,
  //   required String new_password_confirm,
  // }) async {
  //   emit(const ChangePasswordLoading());
  //   final result = await repository.changePassword({
  //     'old_password': old_password,
  //     'new_password': new_password,
  //     'new_password_confirm': new_password_confirm,
  //   });
  //   result.fold((l) {
  //     emit(ChangePasswordError(errorMessage: l.errorMessage));

  //     if (l is ServerFailure && l.statusCode == '401') {}
  //   }, (r) {
  //     emit(const ChangePasswordSuccess());
  //   });
  // }

  // Future<void> changeProfile({
  //   required String nama_lengkap,
  //   required String email,
  //   required String user_name,
  //   required String phone,
  // }) async {
  //   await _userSubscription?.cancel();
  //   emit(const ChangeProfileLoading());
  //   final result = await repository.changeProfile({
  //     'nama_lengkap': nama_lengkap,
  //     'email': email,
  //     'user_name': user_name,
  //     'phone': phone,
  //   });
  //   await result.fold((l) async {
  //     emit(ChangeProfileError(errorMessage: l.errorMessage));
  //     _onUser(user);
  //     if (l is ServerFailure && l.statusCode == '401') {}
  //   }, (r) async {
  //     emit(const ChangeProfileSuccess());
  //     this.user = r ?? User();
  //   });
  // }
}

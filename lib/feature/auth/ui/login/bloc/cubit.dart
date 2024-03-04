import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:danamonTest/common/app/di.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/auth/repository/auth_repository.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:talker/src/talker.dart';

part 'state.dart';

class LoginCubit extends Cubit<LoginState> with BlocLoggy {
  LoginCubit({required this.repository}) : super(const LoginInitial());

  final UserRepository repository;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await repository.login(email, password);
    result.fold((l) {
      emit(LoginError(errorMessage: l.errorMessage));
    }, (r) {
      emit(const LoginSuccess());
    });
  }
}

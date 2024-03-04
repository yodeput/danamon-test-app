import 'package:danamonTest/feature/auth/repository/auth_repository.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit({required this.repository})
      : super(ForgotPasswordInitial());

  final UserRepository repository;

  Future<void> submit(String email) async {
    // emit(ForgotPasswordLoading());
    // final result = await repository.resetPassword({
    //   'email': email,
    // });
    // result.fold((l) {
    //   emit(ForgotPasswordError(message: l.errorMessage));
    // }, (r) {
    //   emit(ForgotPasswordSuccess());
    // });
  }
}

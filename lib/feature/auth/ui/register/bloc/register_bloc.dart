import 'dart:async';

import 'package:danamonTest/feature/auth/ui/register/bloc/register_state.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required this.repository}) : super(RegisterInitial()) {
    on<RegisterSubmit>(_registerSubmit);
  }

  final UserRepository repository;

  Future<void> _registerSubmit(event, emit) async {
    final ev = event as RegisterSubmit;

    emit(RegisterLoading());
    final result = await repository.register({
      'name': ev.name,
      'email': ev.email,
      'password': ev.password,
      'role': ev.role,
    });
    result.fold((l) {
      emit(RegisterError(message: l.errorMessage));
    }, (r) {
      emit(RegisterSuccess());
    });
  }
}

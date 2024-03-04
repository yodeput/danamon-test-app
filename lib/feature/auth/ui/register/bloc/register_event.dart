import 'package:danamonTest/feature/auth/ui/register/bloc/register_state.dart';
import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class RegisterSubmit extends RegisterEvent {
  RegisterSubmit({
    required this.name,
    required this.email,
    required this.password,
    required this.role,
  });

  @override
  List<Object?> get props => [];

  final String name;
  final String email;
  final String password;
  final String role;
}

class RegisterViewEvent extends RegisterEvent {
  RegisterViewEvent(this.state);

  final RegisterState state;

  @override
  List<Object?> get props => [];
}

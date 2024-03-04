import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterLoading extends RegisterState {
  @override
  List<Object?> get props => [];
}

class RegisterError extends RegisterState {
  RegisterError({required this.message});

  @override
  List<Object?> get props => [];

  final String message;
}

class RegisterSuccess extends RegisterState {
  @override
  List<Object?> get props => [];
}

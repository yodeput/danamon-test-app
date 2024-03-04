part of 'forgot_password_cubit.dart';

sealed class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();
}

class ForgotPasswordInitial extends ForgotPasswordState {
  @override
  List<Object> get props => [];
}

class ForgotPasswordLoading extends ForgotPasswordState {
  @override
  List<Object> get props => [];
}

class ForgotPasswordError extends ForgotPasswordState {
  ForgotPasswordError({required this.message});

  @override
  List<Object> get props => [];

  final String message;
}

class ForgotPasswordSuccess extends ForgotPasswordState {
  @override
  List<Object> get props => [];
}

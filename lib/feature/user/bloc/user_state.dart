part of 'user_cubit.dart';

@immutable
sealed class UserState {
  const UserState();
}

class UserInitial extends UserState {
  const UserInitial();
}

class UserEmpty extends UserState {
  const UserEmpty();
}

class UserLoaded extends UserState {
  const UserLoaded({
    required this.user,
  });

  final User? user;
}

class SignoutLoading extends UserState {
  const SignoutLoading();
}

class SignoutSuccess extends UserState {
  const SignoutSuccess();
}

class SignoutError extends UserState {
  const SignoutError({required this.errorMessage});

  final String errorMessage;
}

class ChangePassword extends UserState {
  const ChangePassword();
}

class ChangePasswordLoading extends ChangePassword {
  const ChangePasswordLoading();
}

class ChangePasswordError extends ChangePassword {
  const ChangePasswordError({required this.errorMessage});

  final String errorMessage;
}

class ChangePasswordSuccess extends ChangePassword {
  const ChangePasswordSuccess();
}

class ChangeProfile extends UserState {
  const ChangeProfile();
}

class ChangeProfileLoading extends ChangeProfile {
  const ChangeProfileLoading();
}

class ChangeProfileError extends ChangeProfile {
  const ChangeProfileError({required this.errorMessage});

  final String errorMessage;
}

class ChangeProfileSuccess extends ChangeProfile {
  const ChangeProfileSuccess();
}

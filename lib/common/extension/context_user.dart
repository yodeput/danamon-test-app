import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

extension BuildContextUserExt on BuildContext {
  User? get watchCurrentUser {
    final userState = watch<UserCubit>().state;
    if (userState is! UserLoaded) {
      return null;
    }

    return userState.user;
  }

  User? get getCurrentUser {
    final userState = read<UserCubit>().state;
    if (userState is! UserLoaded) {
      return null;
    }

    return userState.user;
  }
}

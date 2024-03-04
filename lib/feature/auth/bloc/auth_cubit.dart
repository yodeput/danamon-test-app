import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> with BlocLoggy {
  AuthCubit({
    required this.repository,
  }) : super(const AuthInitial());

  final UserRepository repository;
}

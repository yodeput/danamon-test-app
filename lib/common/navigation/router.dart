import 'package:danamonTest/feature/auth/ui/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:danamonTest/feature/auth/ui/forgot_password/view.dart';
import 'package:danamonTest/feature/auth/ui/register/bloc/register_bloc.dart';
import 'package:danamonTest/feature/auth/ui/register/view.dart';
import 'package:danamonTest/feature/main/main_page.dart';
import 'package:danamonTest/feature/splash/splash_page.dart';
import 'package:danamonTest/feature/user/ui/change_password_page.dart';
import 'package:danamonTest/feature/user/ui/change_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/feature/auth/bloc/auth_cubit.dart';
import 'package:danamonTest/feature/auth/ui/login/bloc/cubit.dart';
import 'package:danamonTest/feature/auth/ui/login/view.dart';

import 'package:danamonTest/feature/user/repository/user_repository.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: AppRoute.login.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => LoginCubit(
            repository: context.read<UserRepository>(),
          ),
          child: const LoginPage(),
        );
      },
    ),
    GoRoute(
      path: AppRoute.register.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => RegisterBloc(
            repository: context.read<UserRepository>(),
          ),
          child: RegisterPage(),
        );
      },
    ),
    GoRoute(
      path: AppRoute.forgotPassword.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => ForgotPasswordCubit(
            repository: context.read<UserRepository>(),
          ),
          child: ForgotPasswordPage(),
        );
      },
    ),
    GoRoute(
        path: AppRoute.changePassword.path,
        builder: (context, state) {
          return ChangePasswordPage();
        }),
    GoRoute(
        path: AppRoute.changeProfile.path,
        builder: (context, state) {
          return ChangeProfilePage();
        }),
  ],
);

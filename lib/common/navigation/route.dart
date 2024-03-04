import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash('/'),
  home('/home'),
  settings('/settings'),
  auth('/auth'),
  login('/auth/login'),
  register('/auth/register'),
  verifyOtp('/auth/register/verify-otp'),
  forgotPassword('/auth/forgot-password'),

  changePassword('/profile/change-password'),
  changeProfile('/profile/change-profile');

  const AppRoute(this.path);

  final String path;
}

extension AppRouteNavigation on AppRoute {
  void go(BuildContext context, {Object? extra}) =>
      context.go(path, extra: extra);

  void push(BuildContext context, {Object? extra}) =>
      context.push(path, extra: extra);

  void pop(BuildContext context) => context.pop();
}

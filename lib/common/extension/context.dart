import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:danamonTest/common/ui/widget/responsive.dart';
import 'package:go_router/go_router.dart';

enum SnackbarType { error, success, general, warning }

extension Context on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  Size get screenSize => MediaQuery.sizeOf(this);

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Brightness get brightness => MediaQuery.of(this).platformBrightness;

  bool get isDarkMode => brightness == Brightness.dark;

  void closeKeyboard() => FocusScope.of(this).unfocus();

  void back() => Navigator.of(this).pop();

  String get stringExtra => GoRouterState.of(this).extra! as String;

  Map<String, dynamic> get mapExtra =>
      GoRouterState.of(this).extra! as Map<String, dynamic>;

  Object? get getExtra => GoRouterState.of(this).extra;

  void showSnackBarMessage(
    String message, {
    SnackbarType type = SnackbarType.general,
  }) {
    final theme = Theme.of(this);
    final Color? foregroundColor;
    final Color? backgroundColor;

    switch (type) {
      case SnackbarType.error:
        {
          foregroundColor = theme.colorScheme.onError;
          backgroundColor = theme.colorScheme.error;
          break;
        }
      case SnackbarType.success:
        {
          foregroundColor = Colors.white;
          backgroundColor = Colors.green[700];
          break;
        }
      case SnackbarType.warning:
        {
          foregroundColor = Colors.white;
          backgroundColor = Colors.amber[700];
          break;
        }
      case SnackbarType.general:
        {
          foregroundColor = Colors.white;
          backgroundColor = Colors.grey[800];
        }
    }
    Flushbar(
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: textTheme.bodySmall
            ?.copyWith(color: foregroundColor, fontWeight: FontWeight.w600),
      ),
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      duration: Duration(seconds: 3),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      messageColor: foregroundColor,
      backgroundColor: backgroundColor ?? Colors.grey[800]!,
    ).show(this);
    /* ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: screenSize.height - (screenSize.height * 0.25),
        ),
        dismissDirection: DismissDirection.up,
        backgroundColor: backgroundColor,
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: textTheme.bodySmall
              ?.copyWith(color: foregroundColor, fontWeight: FontWeight.w600),
        ),
      ),
    ); */
  }

  bool get isWide {
    final maxWidth = MediaQuery.sizeOf(this).width;
    return maxWidth > desktopWidthBreakpoint;
  }
}

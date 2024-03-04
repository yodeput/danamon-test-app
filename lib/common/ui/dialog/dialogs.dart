import 'package:danamonTest/common/ui/dialog/alert_dialog.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/common/ui/dialog/confirmation_dialog.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';

sealed class Dialogs {
  const Dialogs._();

  static Future<void> showDeleteAccountConfirmationDialog(
    BuildContext context,
  ) async {
    final confirmed = await showConfirmationDialog(
      context,
      title: 'Delete Account',
      message: 'Are you sure you want to delete your account forever? '
          'It can take up to 30 days. This cannot be undone.',
      confirmText: 'Delete My Account',
      isDestructive: true,
    );

    if (confirmed && context.mounted) {
      // TODO: implement delete account
      context.showSnackBarMessage('Request submitted.');
    }
  }

  static Future<void> showLoadingDialog(
    BuildContext context,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible:
          false, // Prevent dismissing the dialog by tapping outside
      builder: (BuildContext context) {
        return LoadingOverlay(
          child: Container(),
          loading: true,
        );
      },
    );
  }

  static Future<void> showLogOutConfirmationDialog(
    BuildContext context,
  ) async {
    final confirmed = await showConfirmationDialog(
      context,
      title: 'Sign Out',
      message: 'Anda yakin ingin Sign Out?',
      confirmText: 'Sign Out',
      isDestructive: true,
    );

    if (confirmed && context.mounted) {
      await context.read<UserCubit>().signOut();
    }
  }

  static Future<bool> showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmText,
    bool isDestructive = false,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => ConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          ),
        ) ??
        false;
  }

  static Future<bool> showAlertDialog(
    BuildContext context, {
    required String message,
    required String confirmText,
    bool isDestructive = false,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => CustomAlertDialog(
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          ),
        ) ??
        false;
  }
}

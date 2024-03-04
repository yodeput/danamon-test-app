import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/ui/dialog/dialogs.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _oldController = TextEditingController();
  final _newController = TextEditingController();
  final _newConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (ctx, state) async {
        if (state is ChangePasswordError) {
          context.showSnackBarMessage(
            state.errorMessage,
            type: SnackbarType.error,
          );
          return;
        }

        if (state is ChangePasswordSuccess) {
          final confirmed = await Dialogs.showAlertDialog(
            context,
            message: 'Password berhasil diubah.',
            confirmText: 'Tutup',
          );
          if (confirmed) {
            context.read<UserCubit>().operationComplete();
            context.back();
          }
        }
      },
      builder: (ctx, state) {
        return LoadingOverlay(
          loading: state is ChangePasswordLoading,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Ubah Password'),
            ),
            body: SafeArea(
              child: Form(
                key: _formKey,
                child: PagePadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomSpacer.vertical(scale: 3),
                      InputField.password(
                        label: 'Password Lama',
                        controller: _oldController,
                        textInputAction: TextInputAction.next,
                      ),
                      const CustomSpacer.vertical(scale: 3),
                      InputField.password(
                        label: 'Password Baru',
                        controller: _newController,
                        textInputAction: TextInputAction.next,
                      ),
                      const CustomSpacer.vertical(scale: 3),
                      InputField.passwordConfirm(
                        label: 'Konfirmasi Password',
                        controller: _newConfirmController,
                        passwordController: _newController,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) => _submit(),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () => _submit(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colorScheme.primary,
                        ),
                        child: Text(
                          'Submit',
                          style: context.textTheme.titleMedium?.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      CustomSpacer(
                        scale: 3,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.closeKeyboard();

    final old = _oldController.text.trim();
    final newPass = _newController.text.trim();
    final newPassConfirm = _newConfirmController.text.trim();

    // context.read<UserCubit>().changePassword(
    //     old_password: old,
    //     new_password: newPass,
    //     new_password_confirm: newPassConfirm);
  }
}

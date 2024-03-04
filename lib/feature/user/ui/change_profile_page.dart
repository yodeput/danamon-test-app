import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/extension/context_user.dart';
import 'package:danamonTest/common/ui/dialog/dialogs.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeProfilePage extends StatefulWidget {
  const ChangeProfilePage({super.key});

  @override
  State<ChangeProfilePage> createState() => _ChangeProfilePageState();
}

class _ChangeProfilePageState extends State<ChangeProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final user = context.watchCurrentUser;
    if (user != null) {
      _nameController.text = user.email ?? '';
      _phoneController.text = user.phone ?? '';
      _emailController.text = user.email ?? '';
    }

    return BlocConsumer<UserCubit, UserState>(
      listener: (ctx, state) async {
        if (state is ChangeProfileError) {
          context.showSnackBarMessage(
            state.errorMessage,
            type: SnackbarType.error,
          );
          return;
        }

        if (state is ChangeProfileSuccess) {
          final confirmed = await Dialogs.showAlertDialog(
            ctx,
            message: 'Profil baru berhasil disimpan.',
            confirmText: 'Tutup',
          );
          if (confirmed) {
            context.read<UserCubit>().operationComplete();
            ctx.back();
          }
        }
      },
      builder: (ctx, state) {
        return LoadingOverlay(
          loading: state is ChangeProfileLoading,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Ubah Profil'),
            ),
            body: SafeArea(
              child: Form(
                key: _formKey,
                child: PagePadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomSpacer.vertical(scale: 3),
                      InputField.name(
                        label: 'Nama',
                        controller: _nameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const CustomSpacer.vertical(scale: 3),
                      InputField.email(
                        label: 'Email',
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                      ),
                      const CustomSpacer.vertical(scale: 3),
                      InputField.phone(
                        label: 'Nomor Selular',
                        controller: _phoneController,
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

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final phone = _phoneController.text.trim();

    // context.read<UserCubit>().changeProfile(
    //       nama_lengkap: name,
    //       phone: phone,
    //       email: email,
    //       user_name: email,
    //     );
  }
}

import 'package:danamonTest/common/app/style.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/common/ui/dialog/alert_dialog.dart';
import 'package:danamonTest/common/ui/dialog/dialogs.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/info_widget.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/responsive.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/ui/widget/app_version.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/forgot_password_cubit.dart';

class ForgotPasswordPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) async {
        if (state is ForgotPasswordError) {
          context.showSnackBarMessage(
            state.message,
            type: SnackbarType.error,
          );
          return;
        }

        if (state is ForgotPasswordSuccess) {
          final confirmed = await Dialogs.showAlertDialog(
            context,
            message: 'Password baru berhasil dikirim, silahkan cek Inbox anda.',
            confirmText: 'Kembali ke Login',
          );
          if (confirmed) {
            context.back();
          }
        }
      },
      builder: (context, state) {
        return LoadingOverlay(
          loading: state is ForgotPasswordLoading,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  context.colorScheme.tertiaryContainer,
                  context.colorScheme.primaryContainer
                ],
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ConstrainedWidth.mobile(
                child: SafeArea(
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomSpacer(
                            scale: 10,
                          ),
                          Hero(
                            tag: "logo_app",
                            child: Assets.image.logo.logoWhite.image(
                              height: context.screenSize.height * .12,
                            ),
                          ),
                          // Assets.image.logo.logo
                          //     .image(height: context.screenSize.height * .25),
                          const CustomSpacer.vertical(scale: 4),
                          PagePadding(
                            child: Card(
                              child: PagePadding(
                                vertical: true,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Atur Ulang Password',
                                          style: context.textTheme.titleMedium
                                              ?.copyWith(
                                                  color: context.colorScheme
                                                      .onBackground),
                                        ),
                                        const InfoWidget(infos: [
                                          'Pastikan Nomor Selular dalam keadaan Aktif.',
                                          'Password baru akan dikirimkan melalui SMS.'
                                        ]),
                                      ],
                                    ),
                                    Text(
                                      'Masukan alat email untuk mendapatkan Password baru.',
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              color: context
                                                  .colorScheme.onBackground),
                                    ),
                                    const CustomSpacer.vertical(scale: 2),
                                    InputField.email(
                                      label: 'Email',
                                      controller: _emailController,
                                      textInputAction: TextInputAction.done,
                                      onFieldSubmitted: (_) => _submit(context),
                                    ),
                                    const CustomSpacer.vertical(scale: 2),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () => _submit(context),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: context
                                                .colorScheme.tertiaryContainer,
                                          ),
                                          child: Text(
                                            'Kirim',
                                            style: context.textTheme.titleMedium
                                                ?.copyWith(
                                              color: context.colorScheme
                                                  .onTertiaryContainer,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const CustomSpacer.vertical(scale: 2),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () => context.back(),
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                          ),
                                          child: Text(
                                            'Kembali ke Login',
                                            style: context.textTheme.titleMedium
                                                ?.copyWith(
                                              color:
                                                  context.colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.closeKeyboard();

    final email = _emailController.text.trim();

    context.read<ForgotPasswordCubit>().submit(email);
  }
}

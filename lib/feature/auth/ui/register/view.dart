import 'package:danamonTest/common/app/style.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/info_widget.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/responsive.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/util/validators.dart';
import 'package:danamonTest/feature/auth/ui/register/bloc/register_bloc.dart';
import 'package:danamonTest/feature/auth/ui/register/bloc/register_event.dart';
import 'package:danamonTest/feature/user/repository/user_repository.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/register_state.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = TextEditingController();

  final _passwordController = TextEditingController();

  final _passwordConfirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _agreedToTerms = false;

  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is RegisterError) {
          context.showSnackBarMessage(
            state.message,
            type: SnackbarType.error,
          );
          return;
        }

        if (state is RegisterSuccess) {
          context.back();
          context.showSnackBarMessage("Pendaftaran berhasil silahkan Signin",
              type: SnackbarType.success);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                CustomSpacer(
                  scale: 2,
                ),
                Hero(
                  tag: 'logo_app',
                  child: Assets.image.logo.logoWebp
                      .image(height: context.screenSize.height * .1),
                ),
                CustomSpacer(
                  scale: 2,
                ),
                Form(
                  key: _formKey,
                  child: PagePadding(
                    scale: 2,
                    vertical: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Registrasi Akun DTA',
                              style: context.textTheme.titleMedium?.copyWith(
                                  color: context.colorScheme.onBackground),
                            ),
                            const InfoWidget(infos: [
                              'Kode Aktivasi akan dikirim melalui SMS.',
                              'Pastikan Nomor Selular dalam keadaan Aktif.',
                              'Password tidak boleh kurang dari 8 karakter.'
                            ]),
                          ],
                        ),
                        Text(
                          'Masukan data yang diperlukan',
                          style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.onBackground),
                        ),
                        const CustomSpacer.vertical(scale: 2),
                        InputField.name(
                          label: 'Nama',
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                        ),
                        const CustomSpacer.vertical(scale: 2),
                        InputField.email(
                          label: 'Email',
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                        ),
                        const CustomSpacer.vertical(scale: 2),
                        InputField.password(
                          label: 'Password',
                          controller: _passwordController,
                          textInputAction: TextInputAction.next,
                        ),
                        const CustomSpacer.vertical(scale: 2),
                        DropdownButtonFormField<String>(
                          value: _selectedRole,
                          validator: Validators.required,
                          items: <String>['Admin', 'Normal User']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedRole = newValue;
                            });
                          },
                          style: context.textTheme.bodyLarge,
                          decoration: InputDecoration(
                            labelText: 'Role',
                            border: context.inputDecorationTheme.border,
                          ),
                        ),
                        const CustomSpacer.vertical(scale: 3),
                        Row(
                          children: [
                            Checkbox(
                              value: _agreedToTerms,
                              visualDensity: VisualDensity.compact,
                              checkColor: context.colorScheme.onTertiary,
                              activeColor: context.colorScheme.tertiary,
                              onChanged: (newValue) {
                                setState(() {
                                  _agreedToTerms = newValue!;
                                });
                              },
                            ),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Saya setuju dengan',
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                      text: ' Syarat dan Ketentuan',
                                      style: context.textTheme.titleSmall!
                                          .copyWith(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const CustomSpacer.vertical(scale: 3),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: () => _submit(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    context.colorScheme.tertiaryContainer,
                              ),
                              child: Text(
                                'Register',
                                style: context.textTheme.titleMedium?.copyWith(
                                  color:
                                      context.colorScheme.onTertiaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const CustomSpacer.vertical(scale: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () => context.back(),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(
                                'Halaman Login',
                                style: context.textTheme.titleMedium?.copyWith(
                                  color: context.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
    if (!_agreedToTerms) {
      context.showSnackBarMessage(
        "Anda belum menyetujui Syarat dan Ketentuan.",
        type: SnackbarType.warning,
      );
      return;
    }
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    context.read<RegisterBloc>().add(RegisterSubmit(
          name: name,
          email: email,
          password: password,
          role: _selectedRole ?? '',
        ));
  }
}

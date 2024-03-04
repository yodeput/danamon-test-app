import 'package:danamonTest/common/app/style.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/ui/widget/app_version.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/labeled_text_button.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/responsive.dart';
import 'package:danamonTest/feature/auth/ui/login/bloc/cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: !context.isDarkMode
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginError) {
            context.showSnackBarMessage(
              state.errorMessage,
              type: SnackbarType.error,
            );
            return;
          }

          if (state is LoginSuccess) {
            AppRoute.home.go(context);
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            loading: state is LoginLoading,
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
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: ConstrainedWidth.mobile(
                  child: Form(
                    key: _formKey,
                    child: SafeArea(
                      child: SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Selamat datang di',
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(
                                                color: context
                                                    .colorScheme.onBackground),
                                      ),
                                      Text(
                                        'Danamon Test App',
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(
                                                color: context
                                                    .colorScheme.onBackground),
                                      ),
                                      Text(
                                        'Silahkan masuk menggunakan akun yang telah terdaftar.',
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: context
                                                    .colorScheme.onBackground),
                                      ),
                                      const CustomSpacer.vertical(scale: 2),
                                      InputField.email(
                                        label: 'Email',
                                        controller: _emailController,
                                      ),
                                      const CustomSpacer.vertical(scale: 2),
                                      InputField.password(
                                        controller: _passwordController,
                                        textInputAction: TextInputAction.done,
                                        onFieldSubmitted: (_) => _submit(),
                                      ),
                                      // const CustomSpacer.vertical(scale: 2),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.end,
                                      //   children: [
                                      //     TextButton(
                                      //       onPressed: () => AppRoute
                                      //           .forgotPassword
                                      //           .push(context),
                                      //       style: TextButton.styleFrom(
                                      //           padding: EdgeInsets.zero,
                                      //           tapTargetSize:
                                      //               MaterialTapTargetSize
                                      //                   .shrinkWrap,
                                      //           alignment:
                                      //               Alignment.centerRight),
                                      //       child: Text('Lupa Password?',
                                      //           style: context
                                      //               .textTheme.titleSmall),
                                      //     ),
                                      //   ],
                                      // ),
                                      const CustomSpacer.vertical(scale: 3),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          ElevatedButton(
                                            onPressed: _submit,
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: context
                                                  .colorScheme
                                                  .tertiaryContainer,
                                            ),
                                            child: Text(
                                              'Sign In',
                                              style: context
                                                  .textTheme.titleMedium
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
                                            onPressed: () =>
                                                AppRoute.register.push(context),
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                            child: Text(
                                              'Belum punya Akun?',
                                              style: context
                                                  .textTheme.titleMedium
                                                  ?.copyWith(
                                                color:
                                                    context.colorScheme.primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const CustomSpacer.vertical(scale: 2),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // AppVersion(
                            //   color: context.colorScheme.onPrimary,
                            // ),
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
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.closeKeyboard();

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    context.read<LoginCubit>().signIn(
          email: email,
          password: password,
        );
  }
}

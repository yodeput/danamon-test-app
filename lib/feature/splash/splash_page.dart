import 'package:danamonTest/common/app/style.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/ui/widget/app_version.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with UiLoggy {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: _onUserState,
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                if (context.isDarkMode) gradientDark else gradientLight,
                context.colorScheme.primary
              ],
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const Spacer(),
                  Hero(
                    tag: 'logo_app',
                    child: Assets.lottie.loading.lottie(
                      width: context.screenSize.width * .7,
                    ),
                  ),
                  const Spacer(),
                  CircularProgressIndicator(
                    color: context.colorScheme.onPrimary,
                  ),
                  const CustomSpacer(
                    scale: 5,
                  ),
                  AppVersion(
                    color: context.colorScheme.onPrimary,
                    appName: false,
                  ),
                  const CustomSpacer(
                    scale: 5,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onUserState(BuildContext context, UserState userState) async {
    if (userState is UserEmpty) {
      AppRoute.login.go(context);
      return;
    }
    AppRoute.home.go(context);
  }
}

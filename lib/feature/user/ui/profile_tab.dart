import 'package:danamonTest/common/ui/dialog/dialogs.dart';
import 'package:danamonTest/common/ui/widget/custom_image.dart';
import 'package:danamonTest/common/ui/widget/loading_overlay.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/util/urls.dart';
import 'package:danamonTest/common/ui/widget/app_version.dart';
import 'package:danamonTest/common/ui/widget/settings_container.dart';
import 'package:danamonTest/common/ui/widget/settings_tile.dart';
import 'package:danamonTest/feature/user/bloc/user_cubit.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/extension/context_user.dart';
import 'package:danamonTest/common/navigation/route.dart';
import 'package:danamonTest/feature/user/ui/widget/user_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watchCurrentUser;
    final name = user?.userMetadata?['name'] as String?;
    return BlocConsumer<UserCubit, UserState>(listener: (context, state) {
      if (state is SignoutSuccess) {
        AppRoute.login.go(context);
      }
    }, builder: (context, state) {
      return LoadingOverlay(
        loading: state is SignoutLoading,
        child: SafeArea(
          child: Column(
            children: [
              CustomSpacer(
                scale: 3,
              ),
              Column(
                children: [
                  CustomImage.circle(
                    path: Assets.image.logo.avatar.path,
                    size: 100,
                  ),
                  CustomSpacer(
                    scale: 3,
                  ),
                  Text(
                    name ?? '',
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  ),
                  CustomSpacer(),
                  Text(
                    user?.email ?? '',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge,
                  ),
                ],
              ),
              CustomSpacer(
                scale: 5,
              ),
              PagePadding(
                child: SettingsContainer(children: [
                  // SettingsTile(
                  //   icon: Icons.account_circle_rounded,
                  //   label: 'Ubah Profile',
                  //   roundedTop: true,
                  //   onTap: () => AppRoute.changeProfile.push(context),
                  // ),
                  // SettingsTile(
                  //   icon: Icons.lock,
                  //   label: 'Ubah Password',
                  //   onTap: () => AppRoute.changePassword.push(context),
                  // ),
                  SettingsTile(
                    icon: Icons.logout_rounded,
                    label: 'Sign Out',
                    roundedBottom: true,
                    roundedTop: true,
                    onTap: () => Dialogs.showLogOutConfirmationDialog(context),
                  ),
                ]),
              ),
              CustomSpacer(
                scale: 2,
              ),
              PagePadding(
                child: SettingsContainer(
                  children: [
                    SettingsTile(
                      icon: Icons.security_outlined,
                      label: 'Privacy Policy',
                      onTap: Urls.showPrivacyPolicy,
                      roundedTop: true,
                    ),
                    SettingsTile(
                      icon: Icons.fact_check_outlined,
                      label: 'Terms of Service',
                      onTap: Urls.showTermsOfService,
                    ),
                    SettingsTile(
                      icon: Icons.star_rate_rounded,
                      label: 'Beri kami nilai!',
                      roundedBottom: true,
                      onTap: Urls.showTermsOfService,
                      trailingIcon: Icons.chevron_right_rounded,
                    ),
                    // SettingsTile(
                    //   icon: Icons.delete_outlined,
                    //   label: 'Delete Account',
                    //   onTap: () =>
                    //       Dialogs.showDeleteAccountConfirmationDialog(context),
                    // ),
                  ],
                ),
              ),
              const Spacer(),
              AppVersion(),
              CustomSpacer(
                scale: 3,
              ),
            ],
          ),
        ),
      );
    });
  }
}

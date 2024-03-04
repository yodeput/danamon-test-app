import 'package:danamonTest/common/extension/context_user.dart';
import 'package:danamonTest/feature/home/photos/cubit/photos_cubit.dart';
import 'package:danamonTest/feature/home/photos/repository/photos_repository.dart';
import 'package:danamonTest/feature/home/ui/admin_home_tab.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:danamonTest/feature/home/ui/user_home_tab.dart';
import 'package:danamonTest/feature/home/users/cubit/users_cubit.dart';
import 'package:danamonTest/feature/home/users/repository/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/core/network/bloc.dart';
import 'package:danamonTest/core/network/state.dart';
import 'package:danamonTest/feature/user/ui/profile_tab.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final _tabs = <_HomeTab>[];

  @override
  void initState() {
    final user = context.getCurrentUser;
    final isAdmin = user?.userMetadata?['access_level'] == 'Admin';

    _tabs
      ..add(
        _HomeTab(
          label: 'Beranda',
          activeIcon: Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: Assets.image.icon.homeAlt.svg(height: 26),
          ),
          icon: Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: Assets.image.icon.home.svg(height: 26),
          ),
          content: isAdmin
              ? AdminHomeTab()
              : BlocProvider(
                  create: (context) => PhotosCubit(
                    repository: context.read<PhotosRepository>(),
                  ),
                  child: UserHomeTab(),
                ),
        ),
      )
      ..add(
        _HomeTab(
          label: 'Pengaturan',
          activeIcon: Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: Assets.image.icon.settingAlt.svg(height: 26)),
          icon: Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: Assets.image.icon.setting.svg()),
          content: const ProfileTab(),
        ),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget body;
    final Widget? bottomNavigationBar;

    final content = _tabs[_selectedIndex].content;

    if (context.isWide) {
      body = Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() => _selectedIndex = index);
            },
            destinations: [
              for (final tab in _tabs)
                NavigationRailDestination(
                  label: Text(tab.label),
                  icon: tab.icon,
                  selectedIcon: tab.activeIcon,
                ),
            ],
          ),
          Expanded(child: content),
        ],
      );
      bottomNavigationBar = null;
    } else {
      body = SafeArea(
        child: content,
        top: false,
      );
      bottomNavigationBar = BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedIconTheme: const IconThemeData(size: 26),
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          for (final tab in _tabs)
            BottomNavigationBarItem(
              label: tab.label,
              icon: tab.icon,
              activeIcon: tab.activeIcon,
            ),
        ],
      );
    }

    return BlocConsumer<NetworkBloc, NetworkState>(
      listener: (context, state) {
        if (state is ConnectionFailure) {
          context.showSnackBarMessage(
            'Harap periksa koneksi Internet.',
            type: SnackbarType.error,
          );
          return;
        } else if (state is ConnectionSuccess) {
          context.showSnackBarMessage(
            'Online',
            type: SnackbarType.success,
          );
          return;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: context.isDarkMode
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
            child: body,
          ),
          bottomNavigationBar: bottomNavigationBar,
        );
      },
    );
  }
}

class _HomeTab {
  const _HomeTab({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.content,
  });

  final String label;
  final Widget icon;
  final Widget activeIcon;
  final Widget content;
}

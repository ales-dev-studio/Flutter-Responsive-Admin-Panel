import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bloc/theme_cubit.dart';
import '../utils/check_theme_status.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int selectedIndex = 0;
  final List<AppNavigationDestination> destinations = [
    AppNavigationDestination(label: 'Overview', icon: FontAwesomeIcons.grip),
    AppNavigationDestination(label: 'Products', icon: FontAwesomeIcons.users),
    AppNavigationDestination(
      label: 'Customers',
      icon: FontAwesomeIcons.bagShopping,
    ),
    AppNavigationDestination(
      label: 'Transactions',
      icon: FontAwesomeIcons.solidFile,
    ),
    AppNavigationDestination(
      label: 'Statistics',
      icon: FontAwesomeIcons.chartPie,
    ),
    AppNavigationDestination(
      label: 'Campaigns',
      icon: FontAwesomeIcons.solidBell,
    ),
    AppNavigationDestination(
      label: 'Log Activities',
      icon: FontAwesomeIcons.solidClock,
    ),
    AppNavigationDestination(label: 'Settings', icon: FontAwesomeIcons.gear),
    AppNavigationDestination(
      label: 'Help',
      icon: FontAwesomeIcons.solidCircleQuestion,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final appTypography = context.theme.appTypography;
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: (final int index) {
        if (index == 9) {
          context.read<ThemeCubit>().toggleTheme();
          return;
        }
        setState(() {
          selectedIndex = index;
        });
      },
      tilePadding: EdgeInsets.symmetric(vertical: Dimens.smallPadding),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.veryLargePadding,
          ),
          child: Column(
            spacing: Dimens.padding,
            children: [
              Text(
                'Ales Dev',
                style: context.theme.appTypography.headlineLarge,
              ),
              Text('ales.dev.studio@gmail.com'),
            ],
          ),
        ),
        ...destinations.map((final AppNavigationDestination destination) {
          final index = destinations.indexOf(destination);
          return NavigationDrawerDestination(
            label: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              child: Text(
                destination.label,
                style: appTypography.bodyMedium.copyWith(
                  fontSize: 18,
                  color:
                      checkDarkMode(context)
                          ? null
                          : index == selectedIndex
                          ? Colors.deepPurple
                          : null,
                ),
              ),
            ),
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Center(child: FaIcon(destination.icon)),
            ),
            selectedIcon: SizedBox(
              width: 30,
              height: 30,
              child: Center(
                child: FaIcon(
                  destination.icon,
                  color: checkDarkMode(context) ? null : Colors.deepPurple,
                ),
              ),
            ),
          );
        }),
        NavigationDrawerDestination(
          label: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
            child: SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dark Mode'),
                  Switch(
                    value: checkDarkMode(context),
                    onChanged: (final bool value) {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                  ),
                ],
              ),
            ),
          ),
          icon: SizedBox(
            width: 30,
            height: 30,
            child: Center(child: FaIcon(FontAwesomeIcons.solidMoon)),
          ),
          selectedIcon: SizedBox(
            width: 30,
            height: 30,
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.solidMoon,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AppNavigationDestination {
  const AppNavigationDestination({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

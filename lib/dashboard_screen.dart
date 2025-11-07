import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_admin_panel/utils/check_theme_status.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/theme_cubit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          Row(
            spacing: Dimens.largePadding,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.solidMoon),
              Text('Dark Mode'),
              Switch(
                value: checkDarkMode(context),
                onChanged: (final bool value) {
                  context.read<ThemeCubit>().toggleTheme();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

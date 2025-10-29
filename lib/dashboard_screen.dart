import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_admin_panel/theme/check_theme_status.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/widgets/map_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/theme_cubit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dashboard'),
      ),
      body: Center(
        child: Column(
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
            FaIcon(FontAwesomeIcons.grip),
            FaIcon(FontAwesomeIcons.users),
            FaIcon(FontAwesomeIcons.bagShopping),
            FaIcon(FontAwesomeIcons.solidFile),
            FaIcon(FontAwesomeIcons.chartPie),
            FaIcon(FontAwesomeIcons.solidBell),
            FaIcon(FontAwesomeIcons.solidClock),
            FaIcon(FontAwesomeIcons.solidCircleQuestion),
            FaIcon(FontAwesomeIcons.magnifyingGlass),
            MapWidget(),
          ],
        ),
      ),
    );
  }
}

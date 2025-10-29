import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/widgets/map_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            FaIcon(FontAwesomeIcons.grip),
            FaIcon(FontAwesomeIcons.users),
            FaIcon(FontAwesomeIcons.bagShopping),
            FaIcon(FontAwesomeIcons.solidFile),
            FaIcon(FontAwesomeIcons.chartPie),
            FaIcon(FontAwesomeIcons.solidBell),
            FaIcon(FontAwesomeIcons.solidClock),
            FaIcon(FontAwesomeIcons.solidCircleQuestion),
            FaIcon(FontAwesomeIcons.solidMoon),
            FaIcon(FontAwesomeIcons.magnifyingGlass),
            MapWidget(),
          ],
        ),
      ),
    );
  }
}

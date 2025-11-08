import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/widgets/containers/bordered_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/dimens.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton({
    super.key,
    required this.title,
    this.color = Colors.grey,
    required this.onTap,
  });

  final String title;
  final Color color;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(30),
        child: BorderedContainer(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.mediumPadding,
            vertical: Dimens.padding,
          ),
          borderRadius: 30,
          borderColor: color,
          child: Row(
            spacing: Dimens.padding,
            children: [
              Text(title, style: TextStyle(color: color)),
              FaIcon(FontAwesomeIcons.chevronDown, color: color, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}

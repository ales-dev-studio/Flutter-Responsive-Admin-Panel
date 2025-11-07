import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';

class SmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmallAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.height,
  });

  final String title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimens.padding),
      child: AppBar(
        actions: actions,
        title: Text(title),
        leadingWidth: 90.0,
        bottom: bottom,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height ?? AppBar().preferredSize.height + 24.0);
}

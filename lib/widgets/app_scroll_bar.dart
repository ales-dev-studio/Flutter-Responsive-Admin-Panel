import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/utils/check_platforms.dart';

class AppScrollBar extends StatelessWidget {
  const AppScrollBar({
    super.key,
    required this.controller,
    required this.child,
  });

  final ScrollController controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      thumbVisibility: true,
      thickness: CheckPlatformsUtil.isMobile() ? 0 : 8,
      radius: Radius.circular(30),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/utils/sized_context.dart';

import '../../theme/dimens.dart';

class LargeAppBar extends StatelessWidget {
  const LargeAppBar({
    super.key,
    required this.title,
    this.actions,
    this.centerWidget,
    this.height,
  });

  final String title;
  final List<Widget>? actions;
  final Widget? centerWidget;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102,
      width: context.widthPx - 300,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.largePadding,
                  ),
                  child: Text(
                    title,
                    style: context.theme.appTypography.headlineLarge,
                  ),
                ),
                if (centerWidget != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimens.extraLargePadding,
                        // vertical: Dimens.largePadding,
                      ),
                      child: centerWidget!,
                    ),
                  ),
                if (actions != null) Row(children: actions!),
              ],
            ),
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}

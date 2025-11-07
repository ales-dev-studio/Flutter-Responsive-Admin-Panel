import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/colors.dart';
import 'package:flutter_responsive_admin_panel/utils/check_theme_status.dart';

import '../../theme/dimens.dart';

class ShadedContainer extends StatelessWidget {
  final Widget child;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final BoxConstraints? constraints;
  final double? borderRadius;

  const ShadedContainer({
    super.key,
    required this.child,
    this.borderColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.alignment,
    this.constraints,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      alignment: alignment,
      constraints: constraints,
      decoration: BoxDecoration(
        color:
            checkDarkMode(context)
                ? AppColors.blackColor
                : Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(
          borderRadius ?? Dimens.largePadding,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}

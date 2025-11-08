import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/colors.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/utils/check_theme_status.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/dimens.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            checkDarkMode(context)
                ? AppColors.blackColor
                : AppColors.veryLightGrayColor,
        borderRadius: BorderRadius.circular(30),
      ),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(top: Dimens.smallPadding),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'search anything...',
            hintStyle: context.theme.appTypography.bodyMedium.copyWith(
              color: AppColors.grayColor,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: Dimens.largePadding,
                top: Dimens.mediumPadding,
              ),
              child: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
                color: AppColors.grayColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

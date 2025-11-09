import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/utils/check_device_size.dart';
import 'package:flutter_responsive_admin_panel/utils/sized_context.dart';
import 'package:flutter_responsive_admin_panel/widgets/app_bars/large_app_bar.dart';
import 'package:flutter_responsive_admin_panel/widgets/app_bars/small_app_bar.dart';
import 'package:flutter_responsive_admin_panel/widgets/app_bordered_icon_button.dart';
import 'package:flutter_responsive_admin_panel/widgets/app_search_bar.dart';
import 'package:flutter_responsive_admin_panel/widgets/date_filter_section.dart';
import 'package:flutter_responsive_admin_panel/widgets/drawer_menu.dart';
import 'package:flutter_responsive_admin_panel/widgets/stat_section.dart';
import 'package:flutter_responsive_admin_panel/widgets/user_profile_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          isLargeDesktopSize(context)
              ? null
              : SmallAppBar(
                title: 'Dashboard',
                actions: [
                  AppBorderedIconButton(icon: FontAwesomeIcons.solidBell),
                  UserProfileImage(),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.largePadding,
                      vertical: Dimens.largePadding,
                    ),
                    child: AppSearchBar(),
                  ),
                ),
                height: 146,
              ),
      drawer: !isLargeDesktopSize(context) ? DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Row(
          children: [
            if (isLargeDesktopSize(context))
              SizedBox(
                width: 304,
                height: context.heightPx,
                child: Row(children: [DrawerMenu(), VerticalDivider(width: 0)]),
              ),
            Expanded(
              child: Column(
                spacing: Dimens.largePadding,
                children: [
                  if (isLargeDesktopSize(context))
                    LargeAppBar(
                      title: 'Dashboard',
                      actions: [
                        AppBorderedIconButton(icon: FontAwesomeIcons.solidBell),
                        UserProfileImage(),
                      ],
                      centerWidget: AppSearchBar(),
                    ),
                  DateFilterSection(),
                  SizedBox.shrink(),
                  StatSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/widgets/app_drop_down_button.dart';

import '../theme/colors.dart';
import '../utils/check_device_size.dart';

class DateFilterSection extends StatefulWidget {
  const DateFilterSection({super.key});

  @override
  State<DateFilterSection> createState() => _DateFilterFilterState();
}

class _DateFilterFilterState extends State<DateFilterSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DefaultTabController(
            length: 5,
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.primaryColor,
              labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              indicatorColor: AppColors.primaryColor,
              dividerColor: Colors.transparent,
              isScrollable: true,
              padding: EdgeInsets.zero,
              tabAlignment: TabAlignment.start,
              tabs: [
                _tab('Last 24 hour'),
                _tab('Last weeks'),
                _tab('Last month'),
                _tab('Last year'),
              ],
            ),
          ),
        ),
        if (!isMobileSize(context))
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
            child: AppDropDownButton(
              title: 'Filter by date range',
              onTap: () {},
            ),
          ),
      ],
    );
  }

  Widget _tab(final String title) => Tab(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.smallPadding),
      child: Text(
        title,
        style: context.theme.appTypography.titleSmall.copyWith(
          fontWeight: FontWeight.w200,
        ),
      ),
    ),
  );
}

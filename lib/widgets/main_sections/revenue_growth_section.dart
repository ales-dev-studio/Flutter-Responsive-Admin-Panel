import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/widgets/containers/shaded_container.dart';

import '../transactions_chart.dart';
import '../typography/app_subtitle.dart';
import '../typography/app_title.dart';

class RevenueGrowthSection extends StatelessWidget {
  const RevenueGrowthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      padding: EdgeInsets.all(Dimens.largePadding),
      child: Column(
        spacing: Dimens.largePadding,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTitle(text: 'Revenue Growth (USD)'),
                  TextButton(onPressed: () {}, child: Text('View details')),
                ],
              ),
              AppSubtitle(
                text: 'Based on the website and compared to the mobile app',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          TransactionsChart(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/widgets/typography/app_title.dart';
import 'package:flutter_responsive_admin_panel/widgets/visitor_growth_progress_bar.dart';

class VisitorsGrowthStat extends StatelessWidget {
  const VisitorsGrowthStat({super.key});

  @override
  Widget build(BuildContext context) {
    final appTypography = context.theme.appTypography;
    return Column(
      spacing: Dimens.largePadding,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitle(text: 'Visitor growth'),
            Text('45.8k', style: appTypography.headlineMedium),
          ],
        ),
        VisitorGrowthProgressBar(
          title: 'Class A',
          subTitle: '15,045 Users',
          progress: 0.45,
          color: Colors.red,
        ),
        VisitorGrowthProgressBar(
          title: 'Class B',
          subTitle: '9,105 Users',
          progress: 0.25,
          color: Colors.blue,
        ),
        VisitorGrowthProgressBar(
          title: 'Class C',
          subTitle: '17,225 Users',
          progress: 0.55,
          color: Colors.orange,
        ),
      ],
    );
  }
}

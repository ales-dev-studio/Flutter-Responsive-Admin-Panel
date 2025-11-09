import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/utils/sized_context.dart';
import 'package:flutter_responsive_admin_panel/widgets/containers/shaded_container.dart';
import 'package:flutter_responsive_admin_panel/widgets/products_sold_chart.dart';
import 'package:flutter_responsive_admin_panel/widgets/typography/app_title.dart';
import 'package:flutter_responsive_admin_panel/widgets/visitors_growth_stat.dart';

import 'data_source_viewer.dart';

class SalesOverviewSection extends StatelessWidget {
  const SalesOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      padding: EdgeInsets.all(Dimens.largePadding),
      width: context.widthPx,
      child: Column(
        spacing: Dimens.largePadding,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitle(text: 'Sales overview'),
              TextButton(onPressed: () {}, child: Text('View details')),
            ],
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductsSoldChart(constraints: constraints),
                  Column(
                    spacing: Dimens.largePadding,
                    children: [
                      DataSourceViewer(
                        color: Colors.green.shade400,
                        title: 'Shoes',
                      ),
                      DataSourceViewer(
                        color: Colors.yellow.shade400,
                        title: 'Clothes',
                      ),
                      DataSourceViewer(
                        color: Colors.pink.shade400,
                        title: 'Health care',
                      ),
                      DataSourceViewer(
                        color: Colors.purple.shade400,
                        title: 'Bag',
                      ),
                      DataSourceViewer(
                        color: Colors.orange.shade400,
                        title: 'Cosmetic',
                      ),
                      DataSourceViewer(
                        color: Colors.blue.shade400,
                        title: 'Skin care',
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          SizedBox.shrink(),
          Divider(height: 0),
          VisitorsGrowthStat(),
        ],
      ),
    );
  }
}

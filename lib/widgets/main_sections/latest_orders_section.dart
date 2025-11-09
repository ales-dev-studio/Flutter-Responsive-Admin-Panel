import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/widgets/containers/shaded_container.dart';

import '../orders_data_table.dart';
import '../typography/app_title.dart';

class LatestOrdersSection extends StatelessWidget {
  const LatestOrdersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      height: 555,
      padding: EdgeInsets.all(Dimens.largePadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitle(text: 'Latest orders'),
              TextButton(onPressed: () {}, child: Text('View All')),
            ],
          ),
          Expanded(child: OrdersDataTable()),
        ],
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/utils/check_theme_status.dart';

import '../../theme/colors.dart';

class ProductsSoldChart extends StatelessWidget {
  const ProductsSoldChart({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final appTypography = context.theme.appTypography;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.largePadding),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width:
                    constraints.maxWidth > 370
                        ? 200
                        : constraints.maxWidth > 320
                        ? 150
                        : 100,
                height:
                    constraints.maxWidth > 370
                        ? 200
                        : constraints.maxWidth > 320
                        ? 150
                        : 100,
                child: PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius:
                        constraints.maxWidth > 370
                            ? 70
                            : constraints.maxWidth > 320
                            ? 50
                            : 35,
                    sections: showingSections(),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    '3.7K',
                    style: appTypography.displaySmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color:
                          checkDarkMode(context)
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                      fontSize: constraints.maxWidth > 370 ? null : 22,
                    ),
                  ),
                  Text(
                    'Products',
                    style: appTypography.titleMedium.copyWith(
                      color:
                          checkDarkMode(context)
                              ? AppColors.whiteColor
                              : AppColors.primaryColor,
                      fontSize: constraints.maxWidth > 370 ? null : 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      return switch (i) {
        0 => PieChartSectionData(
          color: Colors.yellow.shade400,
          value: 15,
          showTitle: false,
        ),
        1 => PieChartSectionData(
          color: Colors.green.shade400,
          value: 15,
          showTitle: false,
        ),
        2 => PieChartSectionData(
          color: Colors.purple.shade400,
          value: 15,
          showTitle: false,
        ),
        3 => PieChartSectionData(
          color: Colors.orange.shade400,
          value: 20,
          showTitle: false,
        ),
        4 => PieChartSectionData(
          color: Colors.blue.shade400,
          value: 10,
          showTitle: false,
        ),
        5 => PieChartSectionData(
          color: Colors.pink.shade400,
          value: 20,
          showTitle: false,
        ),
        _ => throw StateError('Invalid'),
      };
    });
  }
}

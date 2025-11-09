import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';
import 'package:flutter_responsive_admin_panel/widgets/containers/bordered_container.dart';

enum StatStatus { ascending, descending }

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.amount,
    required this.status,
    required this.percentageChange,
  });

  final String iconPath;
  final String title;
  final String amount;
  final StatStatus status;
  final String percentageChange;

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      width: 213,
      height: 113,
      padding: EdgeInsets.all(Dimens.largePadding),
      margin: EdgeInsets.only(left: Dimens.largePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: Dimens.padding,
        children: [
          Row(
            spacing: Dimens.padding,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(iconPath, width: 35, height: 35),
              Text(title),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                amount,
                style: context.theme.appTypography.headlineSmall.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: Dimens.padding,
                children: [
                  Image.asset(
                    status == StatStatus.ascending
                        ? 'assets/images/increase.png'
                        : 'assets/images/decrease.png',
                    width: 22,
                  ),
                  Text(
                    percentageChange,
                    style: TextStyle(
                      color:
                          status == StatStatus.ascending
                              ? Color(0xff19C964)
                              : Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

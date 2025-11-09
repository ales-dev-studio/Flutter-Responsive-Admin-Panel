import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';

import '../theme/dimens.dart';

class DataSourceViewer extends StatelessWidget {
  const DataSourceViewer({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Row(
        spacing: Dimens.largePadding,
        children: [
          Container(
            width: 37,
            height: 22,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(Dimens.smallCorners),
            ),
          ),
          Text(
            title,
            style: context.theme.appTypography.labelMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

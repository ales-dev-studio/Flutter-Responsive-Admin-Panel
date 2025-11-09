import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';
import 'package:flutter_responsive_admin_panel/widgets/typography/app_subtitle.dart';

class VisitorGrowthProgressBar extends StatelessWidget {
  const VisitorGrowthProgressBar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.progress,
    required this.color,
  });

  final String title;
  final String subTitle;
  final double progress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Dimens.largePadding,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(title), AppSubtitle(text: subTitle)],
        ),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[400],
          valueColor: AlwaysStoppedAnimation<Color>(color),
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
        ),
      ],
    );
  }
}

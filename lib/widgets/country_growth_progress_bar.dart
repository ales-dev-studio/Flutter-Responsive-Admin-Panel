import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';

import '../theme/colors.dart';

class CountryGrowthProgressBar extends StatelessWidget {
  final String imagePath;
  final String title;
  final double progress;

  const CountryGrowthProgressBar({
    super.key,
    required this.imagePath,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 32,
      child: Row(
        spacing: Dimens.largePadding,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 28,
              width: 28,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              spacing: Dimens.padding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey.shade400,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.primaryColor,
                  ),
                  minHeight: 3,
                  borderRadius: BorderRadius.circular(8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

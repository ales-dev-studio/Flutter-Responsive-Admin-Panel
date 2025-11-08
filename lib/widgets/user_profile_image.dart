import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.largePadding),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: width ?? 55.0,
          height: height ?? 55.0,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/images/user-profile.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

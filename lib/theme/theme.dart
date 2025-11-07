import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/colors.dart';
import 'package:flutter_responsive_admin_panel/theme/typography.dart';

class AppTheme {
  //
  // Light theme
  //
  static final light = ThemeData.light().copyWith(
    extensions: [AppTypography.typography],
    textTheme: TextTheme(
      bodyLarge: AppTypography.typography.bodyLarge.copyWith(
        color: Colors.black,
      ),
      bodyMedium: AppTypography.typography.bodyMedium.copyWith(
        color: Colors.black,
      ),
      bodySmall: AppTypography.typography.bodySmall.copyWith(
        color: Colors.black,
      ),
      displayLarge: AppTypography.typography.displayLarge.copyWith(
        color: Colors.black,
      ),
      displayMedium: AppTypography.typography.displayMedium.copyWith(
        color: Colors.black,
      ),
      displaySmall: AppTypography.typography.displaySmall.copyWith(
        color: Colors.black,
      ),
      labelLarge: AppTypography.typography.labelLarge.copyWith(
        color: Colors.black,
      ),
      labelMedium: AppTypography.typography.labelMedium.copyWith(
        color: Colors.black,
      ),
      labelSmall: AppTypography.typography.labelSmall.copyWith(
        color: Colors.black,
      ),
      headlineLarge: AppTypography.typography.headlineLarge.copyWith(
        color: Colors.black,
      ),
      headlineMedium: AppTypography.typography.headlineMedium.copyWith(
        color: Colors.black,
      ),
      headlineSmall: AppTypography.typography.headlineSmall.copyWith(
        color: Colors.black,
      ),
      titleLarge: AppTypography.typography.titleLarge.copyWith(
        color: Colors.black,
      ),
      titleMedium: AppTypography.typography.titleMedium.copyWith(
        color: Colors.black,
      ),
      titleSmall: AppTypography.typography.titleSmall.copyWith(
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: AppTypography.typography.bodyLarge.copyWith(
        color: Colors.black,
      ),
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,
      labelTextStyle: WidgetStateProperty.resolveWith((
          Set<WidgetState> states,
          ) {
        final Color color =
        states.contains(WidgetState.selected)
            ? AppColors.primaryColor
            : Colors.black;
        return TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        );
      }),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
  );

  //
  // Dark theme
  //
  static final dark = ThemeData.dark().copyWith(
    extensions: [AppTypography.typography],
    textTheme: TextTheme(
      bodyLarge: AppTypography.typography.bodyLarge.copyWith(
        color: Colors.white,
      ),
      bodyMedium: AppTypography.typography.bodyMedium.copyWith(
        color: Colors.white,
      ),
      bodySmall: AppTypography.typography.bodySmall.copyWith(
        color: Colors.white,
      ),
      displayLarge: AppTypography.typography.displayLarge.copyWith(
        color: Colors.white,
      ),
      displayMedium: AppTypography.typography.displayMedium.copyWith(
        color: Colors.white,
      ),
      displaySmall: AppTypography.typography.displaySmall.copyWith(
        color: Colors.white,
      ),
      labelLarge: AppTypography.typography.labelLarge.copyWith(
        color: Colors.white,
      ),
      labelMedium: AppTypography.typography.labelMedium.copyWith(
        color: Colors.white,
      ),
      labelSmall: AppTypography.typography.labelSmall.copyWith(
        color: Colors.white,
      ),
      headlineLarge: AppTypography.typography.headlineLarge.copyWith(
        color: Colors.white,
      ),
      headlineMedium: AppTypography.typography.headlineMedium.copyWith(
        color: Colors.white,
      ),
      headlineSmall: AppTypography.typography.headlineSmall.copyWith(
        color: Colors.white,
      ),
      titleLarge: AppTypography.typography.titleLarge.copyWith(
        color: Colors.white,
      ),
      titleMedium: AppTypography.typography.titleMedium.copyWith(
        color: Colors.white,
      ),
      titleSmall: AppTypography.typography.titleSmall.copyWith(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff141218),
      titleTextStyle: AppTypography.typography.bodyLarge.copyWith(
        color: Colors.white,
      ),
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
    ),
  );
}

extension FontThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appTypography;
  AppTypography get appTypography => extension<AppTypography>()!;
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}

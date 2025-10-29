import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/typography.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //
  // Light theme
  //
  static final light = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
  ).copyWith(
    extensions: [AppTypography.light],
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurpleAccent,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: AppTypography.light.bodyLarge.copyWith(
        color: Colors.black,
        fontSize: 17,
      ),
      surfaceTintColor: Colors.transparent,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,
      labelTextStyle: WidgetStateProperty.resolveWith((
        Set<WidgetState> states,
      ) {
        final Color color =
            states.contains(WidgetState.selected)
                ? Colors.deepPurpleAccent
                : Colors.black;
        return TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        );
      }),
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  //
  // Dark theme
  //
  static final dark = ThemeData.dark().copyWith(
    extensions: [AppTypography.dark],
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

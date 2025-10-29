import 'package:flutter/material.dart';

/// check enable dark mode or not
bool checkDarkMode(final BuildContext context) {
  final ThemeData theme = Theme.of(context);
  if (theme.brightness == Brightness.dark) {
    return true;
  }
  return false;
}

/// check enable dark mode or not
bool checkLightMode(final BuildContext context) {
  final ThemeData theme = Theme.of(context);
  if (theme.brightness == Brightness.light) {
    return true;
  }
  return false;
}

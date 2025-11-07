import 'package:flutter/material.dart';

/// Check if dark mode is enabled or not
bool checkDarkMode(final BuildContext context) {
  final ThemeData theme = Theme.of(context);
  if (theme.brightness == Brightness.dark) {
    return true;
  }
  return false;
}

/// Check if light mode is enabled or not
bool checkLightMode(final BuildContext context) {
  final ThemeData theme = Theme.of(context);
  if (theme.brightness == Brightness.light) {
    return true;
  }
  return false;
}

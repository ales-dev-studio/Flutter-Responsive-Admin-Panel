import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

class PlatformChecker {
  static bool isIOS() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isIOS;
  }

  static bool isAndroid() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isAndroid;
  }

  static bool isWeb() {
    return kIsWeb;
  }

  static bool isLinux() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isLinux;
  }

  static bool isMacOS() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isMacOS;
  }

  static bool isWindows() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isWindows;
  }

  static bool isDesktop() {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      return false;
    }
    return true;
  }
}

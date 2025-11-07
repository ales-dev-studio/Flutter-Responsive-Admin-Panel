import 'package:flutter/material.dart';

import '../theme/dimens.dart';
import 'check_platforms.dart';

extension SizedContext on BuildContext {
  double get pixelsPerInch =>
      CheckPlatformsUtil.isAndroid() || CheckPlatformsUtil.isIOS() ? 150 : 96;

  /// Returns if Orientation is landscape
  bool get isLandscape =>
      MediaQuery.orientationOf(this) == Orientation.landscape;

  /// Returns if Orientation is portrait
  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;

  /// Returns same as MediaQuery.of(context).size
  Size get sizePx => MediaQuery.sizeOf(this);

  /// Returns same as MediaQuery.of(context).size.width
  double get widthPx => sizePx.width;

  /// Returns same as MediaQuery.of(context).height
  double get heightPx => sizePx.height;

  /// Returns pixel size in Inches
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / pixelsPerInch, pxSize.height / pixelsPerInch);
  }

  /// Returns screen width in Inches
  double get widthInches => sizeInches.width;

  /// Returns screen height in Inches
  double get heightInches => sizeInches.height;

  /// Returns fraction (0-1) of screen width in pixels
  double widthPct(final double fraction) => fraction * widthPx;

  /// Returns fraction (0-1) of screen height in pixels
  double heightPct(final double fraction) => fraction * heightPx;

  /// Return limited width in large size screens
  double get appMediaQuerySmallSizeWidth {
    if (MediaQuery.of(this).size.width > Dimens.mediumDeviceBreakPoint) {
      return Dimens.mediumDeviceBreakPoint;
    } else {
      return MediaQuery.of(this).size.width;
    }
  }
}

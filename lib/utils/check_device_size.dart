import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/utils/sized_context.dart';

import '../theme/dimens.dart';

bool isLargeDesktopSize(final BuildContext context) {
  return context.widthPx > Dimens.largeDeviceBreakPoint;
}

bool isDesktopSize(final BuildContext context) {
  return context.widthPx <= Dimens.largeDeviceBreakPoint &&
      context.widthPx > Dimens.mediumDeviceBreakPoint;
}

bool isTabletSize(final BuildContext context) {
  return context.widthPx <= Dimens.mediumDeviceBreakPoint &&
      context.widthPx > Dimens.smallDeviceBreakPoint;
}

bool isMobileSize(final BuildContext context) {
  return context.widthPx <= Dimens.smallDeviceBreakPoint;
}

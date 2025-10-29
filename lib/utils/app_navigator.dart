import 'package:flutter/material.dart';

dynamic appPush(
  final BuildContext context,
  final Widget page, {
  final bool fullscreenDialog = false,
}) async {
  return await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (final context) => page,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}

dynamic appPushReplacement(
  final BuildContext context,
  final Widget page,
) async {
  return await Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (final context) => page),
  );
}

void appPop(final BuildContext context, {final dynamic data}) {
  Navigator.pop(context, data);
}

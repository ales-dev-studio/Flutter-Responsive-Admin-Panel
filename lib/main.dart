import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_responsive_admin_panel/dashboard_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: DashboardScreen(),
    );
  }
}

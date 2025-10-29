import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_admin_panel/dashboard_screen.dart';
import 'package:flutter_responsive_admin_panel/theme/theme.dart';

import 'bloc/theme_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (final BuildContext context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode?>(
        builder: (final BuildContext context, final ThemeMode? themeMode) {
          return App(themeMode: themeMode);
        },
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key, this.themeMode});

  final ThemeMode? themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: DashboardScreen(),
    );
  }
}

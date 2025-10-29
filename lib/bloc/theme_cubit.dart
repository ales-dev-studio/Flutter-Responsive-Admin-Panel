import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeMode?> {
  ThemeCubit() : super(null) {
    initTheme();
  }

  Future<void> toggleTheme() async {
    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> initTheme() async {
    emit(ThemeMode.light);
  }
}

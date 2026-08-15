import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFE600)),
      useMaterial3: true,
    );
  }
}

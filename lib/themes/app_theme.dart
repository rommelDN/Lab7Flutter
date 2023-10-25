import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.brown;
  static final ThemeData odenfisTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary)
  );

  static final ThemeData odenfisDark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: primary),
    iconTheme: const IconThemeData(color: primary)
  );
}
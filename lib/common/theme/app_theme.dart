import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 28, fontWeight: .w800),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyle(color: Colors.grey.shade400),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
      border: OutlineInputBorder(borderSide: BorderSide.none),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.cPrimary,
        fixedSize: Size.fromWidth(double.maxFinite),
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
  );
}

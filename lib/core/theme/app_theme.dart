import 'package:flutter/material.dart';
import 'package:production_ready_app/core/theme/app_colors.dart';
import 'package:production_ready_app/core/theme/app_text_style.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        bodySmall: AppTextStyle.bodySmall,
        bodyMedium: AppTextStyle.bodyMedium,
        bodyLarge: AppTextStyle.bodyLarge,
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.surface,
        secondary: AppColors.secondary,
        onSecondary: AppColors.surface,
        error: AppColors.red,
        onError: AppColors.surface,
        surface: AppColors.surface,
        onSurface: AppColors.text,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background
          //textStyle: AppTextStyle.Button,
        )

      )
    );
  }
}

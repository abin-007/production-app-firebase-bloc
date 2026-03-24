import 'package:flutter/material.dart';
import 'package:production_ready_app/core/theme/app_colors.dart';
import 'package:production_ready_app/core/theme/app_text_style.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        bodySmall: AppTextStyle.bodySmall,
        bodyMedium: AppTextStyle.bodyMedium,
        bodyLarge: AppTextStyle.bodyLarge,
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.background,
        secondary: AppColors.secondary,
        onSecondary: AppColors.background,
        error: AppColors.errorColor,
        onError: AppColors.surface,
        surface: AppColors.background,
        onSurface: AppColors.textColor,
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

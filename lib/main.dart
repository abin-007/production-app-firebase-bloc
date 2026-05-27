import 'package:flutter/material.dart';
import 'package:production_ready_app/core/router/app_router.dart';
import 'package:production_ready_app/core/theme/app_theme.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: AppRouter.router,
    theme: AppTheme.getTheme(),

  ));
}





import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screen/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screen/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screen/home/home_screen.dart';

import 'config/theme/app_theme.dart';
import 'config/theme/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 1).getTheme(),
    );
  }
}

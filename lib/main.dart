import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/home_screen.dart';
import 'package:flutter_theme_etension/strings.dart';
import 'package:flutter_theme_etension/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/account_screen.dart';
import 'package:flutter_theme_etension/home/settings/settings_screen.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/utils/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedScreenIndex == 0
          ? const AccountScreen()
          : const SettingsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: context.colors.defaultIcon,
        unselectedItemColor: context.colors.disabledIcon,
        backgroundColor: context.colors.surface,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: Strings.home),
          BottomNavigationBarItem(
              icon: const Icon(Icons.settings), label: Strings.settings)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const ScreenA(), "title": "Screen A Title"},
    {"screen": const ScreenB(), "title": "Screen B Title"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theming and Styling"),
        centerTitle: false,
        actions: [
          Row(
            children: [
              Text("Dark Mode"),
              Switch(value: false, onChanged: (_) {}),
            ],
          ),
        ],
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedScreenIndex,
          onTap: _selectScreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Screen B")
          ]),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

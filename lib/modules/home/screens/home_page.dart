import 'package:flutter/material.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/card_questions_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(color: Color(0xFFffffff));
  static final List<Widget> _widgetOptions = <Widget>[
    const CardQuestionsWidget(),
    const CardQuestionsWidget(),
    const Text(
      "Page 3",
      style: optionStyle,
    ),
    const Text(
      "Page 4",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: AppBarWidget(),
      ),
      backgroundColor: AppColors.primary,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF343141),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: "Jobs",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Conquistas",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Config",
            backgroundColor: AppColors.secondary,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.sutTitle,
        onTap: _onItemTapped,
      ),
    );
  }
}

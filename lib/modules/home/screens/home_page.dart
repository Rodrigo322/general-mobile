import 'package:flutter/material.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(color: Color(0xFFffffff));
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
      height: 100,
      width: 200,
      decoration: const BoxDecoration(color: Colors.amber),
      child: const Text(
        "Page 1",
        style: optionStyle,
      ),
    ),
    const Text(
      "Page 2",
      style: optionStyle,
    ),
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Container(
          height: 160,
          color: AppColors.secondary,
          child: Center(
            child: ListTile(
              title: const Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: TextStyle(
                    color: AppColors.title,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "Rodrigo Lucas",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Pratique todos os dias 20 questões",
                  style: TextStyle(
                    color: AppColors.sutTitle,
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: SizedBox(
                width: 48,
                height: 48,
                child: Image.network(
                  'https://github.com/rodrigo322.png',
                  loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : const CircularProgressIndicator();
                  },
                ),
              ),
            ),
          ),
        ),
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
            label: "Home",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: "User",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "User",
            backgroundColor: AppColors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "User",
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

import 'package:flutter/material.dart';

import 'screens/teachers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TeachersScreen(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 1,
        onTap: (index) {},
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        items: [
          _barItem(
            icon: const Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          _barItem(
            icon: const Icon(
              Icons.search,
              color: Colors.orange,
            ),
            label: "Teachers",
          ),
          _barItem(
            icon: const Icon(
              Icons.videocam_outlined,
            ),
            label: "Sessions",
          ),
          _barItem(
            icon: const Icon(
              Icons.more_horiz,
            ),
            label: "More",
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _barItem({
    required Widget icon,
    Widget? selectedIcon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      activeIcon: selectedIcon,
      icon: icon,
      label: label,
      tooltip: label,
    );
  }
}

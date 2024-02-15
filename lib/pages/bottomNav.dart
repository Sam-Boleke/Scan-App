
// import 'package:e_comm/pages/Map.dart';
// import 'package:e_comm/pages/Settings.dart';
// import 'package:e_comm/pages/dashboard.dart';
import 'package:e_comm/Pages/Settings.dart';
import 'package:e_comm/pages/scan.dart';
import 'package:e_comm/pages/home.dart';
// import 'package:e_comm/pages/request%20pick%20up.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  final List<Widget> _tabs = [

    const ScanTab(),
    HomeTab(),
    const SettingsTab(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}








//import 'package:e_comm/pages/Settings.dart';
//import 'package:e_comm/pages/Wallet.dart';
import 'package:e_comm/pages/bottomNav.dart';
import 'package:e_comm/pages/scan.dart';
import 'package:e_comm/pages/home.dart';
import 'package:flutter/material.dart';

import '../pages/settings.dart';

class RouteManager {
  static const String homeTab = '/';
  static const String myHomePage = '/myHomePage';
  static const String settingsTab = '/settings';
  static const String wallet = '/wallet';
  static const String dashboardTab = '/dashboard';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeTab:
        return MaterialPageRoute(
          builder: (context) =>  HomeTab(),
        );

      case settingsTab:
        return MaterialPageRoute(
          builder: (context) =>  SettingsTab(),
        );

      case wallet:
        return MaterialPageRoute(
          builder: (context) =>  Column(),
        );

      case dashboardTab:
        return MaterialPageRoute(
          builder: (context) =>  ScanTab(),
        );

      case myHomePage:
        return MaterialPageRoute(
          builder: (context) =>  MyHomePage(),
        );

      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mifare_classic_tool/screens/home_screen.dart';
import 'package:flutter_mifare_classic_tool/screens/read_data_screen.dart';
import 'package:flutter_mifare_classic_tool/screens/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splash_screen";
  static const String homeScreen = "/home_screen";
  static const String readDataScreen = "/read_data_screen";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _MaterialPageRoute(child: const SplashScreen());
      case homeScreen:
        return _MaterialPageRoute(child:  const HomeScreen());
      case readDataScreen:
        return _MaterialPageRoute(child: const ReadDataScreen());
      default:
        return _MaterialPageRoute(child: const SplashScreen());
    }
  }
}

class _MaterialPageRoute extends MaterialPageRoute {
  _MaterialPageRoute({required this.child})
      : super(builder: (BuildContext context) => child);
  final Widget child;
}


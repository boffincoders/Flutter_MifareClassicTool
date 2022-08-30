import 'package:flutter/material.dart';
import 'package:flutter_mifare_classic_tool/app_config/app_routes/app_routes.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/app_strings.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/app_style.dart';

late GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey ;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.mifareClassicTool,
      debugShowCheckedModeBanner: false,
      theme: AppStyle.appThemeData,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.splashScreen,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}

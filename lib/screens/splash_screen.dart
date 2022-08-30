import 'package:flutter/material.dart';
import 'package:flutter_mifare_classic_tool/app_config/app_routes/app_routes.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.mifareClassicTool,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Icon(
              Icons.nfc,
              size: MediaQuery.of(context).size.height * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mifare_classic_tool/app_config/app_routes/app_routes.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/app_color.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/app_strings.dart';
import 'package:flutter_mifare_classic_tool/app_config/common/widget/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme themeData = Theme.of(context).textTheme;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: MyAppBar(size: size),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            decoration: BoxDecoration(
              color: AppColor.blackColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: _readDataView(context, size, themeData),
          ),
        ),
      ),
    );
  }

  Widget _readDataView(BuildContext context, Size size, TextTheme themeData) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.readDataScreen);
      },
      child: Container(
        width: size.width,
        height: size.height * 0.3,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: AppColor.primarySwatch,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Icon(
                Icons.nfc,
                size: size.height * 0.15,
              ),
              Text(
                AppStrings.readData,
                style: themeData.titleMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}

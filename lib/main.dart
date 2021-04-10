import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/pages/splash.dart';
import 'package:flutter/services.dart';
import 'package:pi_data/widgets/bottom_navigation_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(

      title: 'PiData',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: BottomBarWidget()
    );
  }
}


import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/pages/splash_page.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(

      title: 'PiData',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: SplashPage()
    );
  }
}


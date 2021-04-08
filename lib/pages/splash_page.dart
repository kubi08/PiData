import 'package:flutter/material.dart';
import 'package:pi_data/config/strings.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashDelayed().then((value) {
      if (value) {
        promotionPageRoute();
      } else {
        splashDelayed();
      }
    });
  }

  Future<bool> splashDelayed() async {
    await Future.delayed(Duration(seconds:5));
    return true;
  }
  void promotionPageRoute() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double appBar=AppBar().preferredSize.height;
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    double totalHeight=height-appBar;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                color:primaryColor,
                child: Text(splashBottomText,
                  style: TextStyle(fontSize:width*0.35,fontFamily: 'mainFont',color:whiteColor,height:-5),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Text(splashTopText,
                  style: TextStyle(fontSize:width*0.20,fontFamily:'secondFont',color:primaryColor),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

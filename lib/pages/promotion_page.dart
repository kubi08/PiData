import 'package:flutter/material.dart';
import 'package:pi_data/Welcome/welcome_screen.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/config/strings.dart';
import 'package:pi_data/model/promotion_model.dart';

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  List<PromotionModel> list = PromotionModel.list;
  var _controller = PageController();
  var initialPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 2,
        actions: [
          FlatButton(
            child: Text(promotionSkipText,style: TextStyle(color: whiteColor,fontSize: 15),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15,right: 15),
        child: Column(

          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      _displayImage(list[index].id),
                      SizedBox(height: 15),
                      _displayText(list[index].text),

                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 60,
                          height: 60,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(primaryColor),
                            value: (initialPage) / (list.length-1),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            if (initialPage < list.length)
                              _controller.animateToPage(initialPage + 1,
                                  duration: Duration(microseconds: 10),
                                  curve: Curves.easeIn);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color:primaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(80),
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color:whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  _displayText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: primaryColor,
          fontSize: 20,
          fontFamily: 'secondFont'),
      textAlign: TextAlign.center,
    );
  }
  _displayImage(int path) {
    return Image.asset(
      "assets/images/$path.png",
      height: MediaQuery.of(context).size.height * 0.6,
    );
  }
}

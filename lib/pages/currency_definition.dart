import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/custom_button.dart';
import 'package:pi_data/widgets/currency_dropdown.dart';
import 'package:pi_data/widgets/country_dropdown.dart';
import 'package:pi_data/widgets/slide_drawer_menu.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class CurrencyDefinitionPage extends StatefulWidget {
  @override
  _CurrencyDefinitionPageState createState() => _CurrencyDefinitionPageState();
}

class _CurrencyDefinitionPageState extends State<CurrencyDefinitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      body: SliderMenuContainer(
        appBarColor: Colors.white,
        drawerIconSize: 25,
        isTitleCenter: false,
        appBarPadding: const EdgeInsets.only(top: 25),
        appBarHeight: 81,
        drawerIconColor: Colors.grey.shade700,
        title: Text(
          '  Para Tanımlama',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontFamily: 'primaryFont'),
        ),
        sliderMenu: SlideDrawerMenuWidget(),
        sliderMain: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: <Widget>[
                Divider(height: 1, color: Colors.grey.shade700),
                SizedBox(height: 10), //Card
                SizedBox(
                    height: 180.0,
                    width: 330.0,
                    child: Carousel(
                      images: [
                        ExactAssetImage("assets/images/carousel_one.png"),
                        ExactAssetImage("assets/images/carousel_two.png"),
                        ExactAssetImage("assets/images/carousel_three.png")
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 5.0,
                      dotBgColor: secondaryColor.withOpacity(0.5),
                      borderRadius: true,
                    )),
                SizedBox(height: 20),
                FDottedLine(
                  corner: FDottedLineCorner.all(2),
                  child: Container(
                    margin:EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 30),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 155,
                                child: Card(
                                  shape:  RoundedRectangleBorder(
                                      side: new BorderSide(color: Colors.grey.shade700, width: 1),
                                      borderRadius: BorderRadius.circular(4.0)),
                                  elevation: 0.5,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: <Widget>[
                                              DropdownMenuWidget(),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 155,
                                child: Card(
                                  shape:  RoundedRectangleBorder(
                                      side:  BorderSide(color: Colors.grey.shade700, width: 1),
                                      borderRadius: BorderRadius.circular(4.0)),
                                  elevation: 0.5,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: <Widget>[
                                              CountryDropdownMenuWidget(),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                            width: 320,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.grey.shade700, width: 1),
                                ),
                                labelText: 'Not',
                                hintText: 'Not giriniz',
                              ),
                              autofocus: false,
                            )
                        ),
                        SizedBox(height: 15),
                        CustomButtonWidget(
                          title: "Para Birimi Ekle",
                          textColor: whiteColor,
                          buttonBackgroundColor: primaryColor,
                          buttonIcon: Icons.add_circle_outline_outlined,
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
              fontSize: 25,
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
                SizedBox(height: 5), //Card
                SizedBox(
                    height: 150.0,
                    width: 320.0,
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
                  corner: FDottedLineCorner.all(15),
                  child: Container(
                    margin:EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text("Para Birimi Tanımlama",style: TextStyle(fontSize: 25),),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 320,
                          child: FlatButton.icon(
                            icon: Icon(Icons.monetization_on_outlined,color: secondaryColor),
                            shape: RoundedRectangleBorder(
                                side: new BorderSide(
                                    color: Colors.grey.shade500, width: 1),
                                borderRadius: BorderRadius.circular(4.0)),

                            label: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: <Widget>[
                                    DropdownMenuWidget(),
                                  ],
                                )),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          width: 320,
                          child: FlatButton.icon(
                            icon: Icon(Icons.account_balance_outlined,color: secondaryColor,),
                            shape: RoundedRectangleBorder(
                                side: new BorderSide(
                                    color: Colors.grey.shade500, width: 1),
                                borderRadius: BorderRadius.circular(4.0)),

                            label: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: <Widget>[
                                    CountryDropdownMenuWidget(),
                                  ],
                                )),
                          ),
                        ),

                        SizedBox(height: 10),
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
                          onClick: () {},
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

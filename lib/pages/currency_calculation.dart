import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/country_dropdown.dart';
import 'package:pi_data/widgets/currency_dropdown.dart';
import 'package:pi_data/widgets/custom_button.dart';
import 'package:pi_data/widgets/slide_drawer_menu.dart';

class CurrencyCalculationPage extends StatefulWidget {
  @override
  _CurrencyCalculationPageState createState() => _CurrencyCalculationPageState();
}

class _CurrencyCalculationPageState extends State<CurrencyCalculationPage> {
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

                SizedBox(height: 20),
                FDottedLine(
                  corner: FDottedLineCorner.all(2),
                  child: Container(
                    margin:EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
                    child: Column(
                      children: [

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
                        FlatButton.icon(
                          icon: Icon(Icons.autorenew_outlined,color: secondaryColor,size: 25,),
                          shape: RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.grey.shade500, width: 1),
                              borderRadius: BorderRadius.circular(4.0)),

                          label: Text("Çevir",style: TextStyle(color: secondaryColor),)
                        ),
                        SizedBox(height: 10),
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

                        SizedBox(height: 15),
                        Container(
                          width: 320,
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                side: new BorderSide(
                                    color: Colors.grey.shade400, width: 1),
                                borderRadius: BorderRadius.circular(4.0)),
                            elevation: 2,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("Sonuç:",style: TextStyle(color: secondaryColor,
                                      fontSize: 20,fontFamily: 'primaryFont'),textAlign: TextAlign.center,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text("131.45",style: TextStyle(color:primaryColor,
                                      fontSize: 30,fontFamily: 'primaryFont'),textAlign: TextAlign.center,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text("Değişim Oranı:1.2558585",style: TextStyle(color:secondaryColor,
                                      fontSize: 15),textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                          ),
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

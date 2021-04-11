import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/currency_dropdown.dart';
import 'package:pi_data/widgets/custom_button.dart';

class CurrencyCalculationPage extends StatefulWidget {
  @override
  _CurrencyCalculationPageState createState() =>
      _CurrencyCalculationPageState();
}

class _CurrencyCalculationPageState extends State<CurrencyCalculationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('PidataSoft',style: TextStyle(color: whiteColor,fontSize: 30,fontFamily:'primaryFont',height: 2)),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FDottedLine(
            corner: FDottedLineCorner.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text("Kur Hesaplama",style: TextStyle(fontSize: 25),),
                SizedBox(height: 10),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 320,
                        child: FlatButton.icon(
                          icon: Icon(Icons.monetization_on_outlined,
                              color: secondaryColor),
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
                          icon: Icon(
                            Icons.autorenew_outlined,
                            color: secondaryColor,
                            size: 25,
                          ),
                          shape: RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.grey.shade500, width: 1),
                              borderRadius: BorderRadius.circular(4.0)),
                          label: Text(
                            "Çevir",
                            style: TextStyle(color: secondaryColor),
                          )),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: 320,
                        child: FlatButton.icon(
                          icon: Icon(Icons.monetization_on_outlined,
                              color: secondaryColor),
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
                                child: Text(
                                  "Sonuç:",
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20,
                                      fontFamily: 'primaryFont'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Text(
                                  "131.45",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 30,
                                      fontFamily: 'primaryFont'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Text(
                                  "Değişim Oranı:1.2558585",
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      CustomButtonWidget(
                        onClick: () {},
                        title: "Kuru Hesapla",
                        textColor: whiteColor,
                        buttonBackgroundColor: primaryColor,
                        buttonIcon: Icons.calculate_outlined,
                      ),
                    ],
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

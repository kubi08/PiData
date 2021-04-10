import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/currency_dropdown.dart';
import 'package:pi_data/widgets/country_dropdown.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pi_data/widgets/custom_button.dart';
import 'package:pi_data/widgets/slide_drawer_menu.dart';

class CurrencyUpdatePage extends StatefulWidget {
  @override
  _CurrencyUpdatePageState createState() => _CurrencyUpdatePageState();
}

class _CurrencyUpdatePageState extends State<CurrencyUpdatePage> {
  String startDate="10/04/2020";
  String endDate="10/02/2021";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15,top: 55),
          child: FDottedLine(
            corner: FDottedLineCorner.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                Text("Kur Bilgilerini Güncelle",style: TextStyle(fontSize: 25),),
                SizedBox(height: 20),
                FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      SizedBox(height: 15),
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 160,
                        child: FlatButton.icon(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey.shade500),
                              borderRadius:
                              BorderRadius.all(Radius.circular(4.0))),
                          icon: Icon(Icons.date_range_outlined),
                          label: Text(
                            "Başla Tarihi",
                            style: TextStyle(color: secondaryColor, fontSize: 14),
                          ),
                          color: whiteColor,
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime(2008, 1, 1),
                                maxTime: DateTime(2020, 31, 12),
                                onChanged: (date) {
                                  setState(() {
                                    startDate = date.toString().substring(0,11);
                                  });

                                  print('change $date');
                                }, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                currentTime: DateTime.now(),
                                locale: LocaleType.tr);
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 155,
                        child: FlatButton.icon(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey.shade500),
                              borderRadius:
                              BorderRadius.all(Radius.circular(4.0))),
                          icon: Icon(Icons.date_range_outlined),
                          label: Text(
                            "Bitiş Tarihi",
                            style: TextStyle(color: secondaryColor, fontSize: 14),
                          ),
                          color: whiteColor,
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime(2008, 1, 1),
                                maxTime: DateTime(2020, 31, 12),
                                onChanged: (date) {
                                  setState(() {
                                    endDate = date.toString().substring(0,11);
                                  });

                                  print('change $date');
                                }, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                currentTime: DateTime.now(),
                                locale: LocaleType.tr);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  elevation: 2,
                  child: Row(
                    children: [
                      Container(
                        width: 155,
                        height: 60,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Başlama Tarihi:",style: TextStyle(color: secondaryColor,
                                  fontSize: 14),textAlign: TextAlign.left,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("$startDate",style: TextStyle(color:primaryColor,
                                  fontSize: 13),textAlign: TextAlign.left,),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 60,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Bitiş Tarihi:",style: TextStyle(color: secondaryColor,
                                  fontSize: 14),textAlign: TextAlign.left,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("$endDate",style: TextStyle(color:primaryColor,
                                  fontSize: 13),textAlign: TextAlign.left,),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Text(tarih.toString()),
                SizedBox(height: 15),
                CustomButtonWidget(
                  title: "Para Birimi Ekle",
                  textColor: whiteColor,
                  buttonBackgroundColor: primaryColor,
                  buttonIcon: Icons.add_circle_outline_outlined,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

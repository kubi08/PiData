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
  DateTime tarih;
  String startDate = "Başlangıç Tarihi";

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

            margin: EdgeInsets.only(left: 15, right: 15,top: 10),
            child: FDottedLine(
              corner: FDottedLineCorner.all(10),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
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
                          margin: EdgeInsets.only(left: 10,right: 10),
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
                  SizedBox(height: 10),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
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
                                      tarih = date;
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
                          margin: EdgeInsets.only(right: 10),
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
                                      tarih = date;
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pi_data/config/colors.dart';

class PiDataAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title:Text('PidataSoft',style: TextStyle(color: whiteColor,fontSize: 30,fontFamily:'primaryFont',height: 2)),
      ),
      body:Column(
        children: <Widget>[
          Divider(
            height: 1,
            color: Colors.grey.shade500,
          ),
          SizedBox(height: 10),

          Container(
            child: Image.asset("assets/images/pidata_logo.png"),
            height: 130,
            width: 150,
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 10, 10),
            child: Text(
              "Tüm Hakları Saklıdır.Kullanım ve Telif hakları Pidata yazılım şirketine aittir.",
              style: TextStyle(
                  fontSize: 15.3,
                  fontFamily: 'ContentForm',
                  color: Colors.grey.shade800),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(22, 0, 10, 5),
            child: Text(
              "Adres Bilgileri",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.red),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(22, 0, 10, 10),
            child: Text(
              "Pidata Yazılım Şirketi. Beytepe, Üniversiteler Mahallesi 1596. Cadde 6. Ar-Ge E Blok Bina No:6E,Kat No:5 Ofis No:29, Beytepe Cd, 06800 Çankaya/Ankara",
              style: TextStyle(
                  fontSize: 15.3,
                  fontFamily: 'ContentForm',
                  color: Colors.grey.shade800),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(22, 0, 10, 5),
            child: Text(
              "Pidata İletişim Bilgileri ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.red),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(22, 0, 10, 10),
            child: Text(
              "(0312) 284 84 60",
              style: TextStyle(
                  fontSize: 15.3,
                  fontFamily: 'ContentForm',
                  color: Colors.grey.shade800),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: SvgPicture.asset('assets/icons/facebook.svg'),
                height: 50,
                width: 50,
              ),
              Container(
                child: SvgPicture.asset('assets/icons/twitter.svg'),
                height: 50,
                width: 50,
              ),
              Container(
                child: SvgPicture.asset('assets/icons/google_plus.svg'),
                height: 50,
                width: 50,
              ),

            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(22, 10, 10, 10),
            child: Text(
              "Copyright © 2020 ",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

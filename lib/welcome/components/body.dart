import 'package:flutter/material.dart';
import 'package:pi_data/Login/login_screen.dart';
import 'package:pi_data/sign_up/sign_up_screen.dart';
import 'package:pi_data/Welcome/components/background.dart';
import 'package:pi_data/components/rounded_button.dart';
import 'package:pi_data/config/colors.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text("Pidata.",style: TextStyle(fontFamily: 'logoFont',fontSize:size.width * 0.20,color:primaryColor),),
            Text("currency",style: TextStyle(fontFamily: 'primaryFont',fontSize:size.width * 0.10,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.05),

        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: size.width * 0.8,
          child: ClipRRect(

            child: FlatButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color:primaryColor

                  )
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              color: whiteColor,
              onPressed:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "GİRİŞ YAP",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
        ),
            RoundedButton(
              text: "KAYIT OL",
              color: primaryColor,
              textColor: whiteColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pi_data/Login/login_screen.dart';
import 'package:pi_data/sign_up/components/background.dart';
import 'package:pi_data/sign_up/components/social_icon.dart';
import 'package:pi_data/components/already_have_an_account_acheck.dart';
import 'package:pi_data/components/rounded_button.dart';
import 'package:pi_data/components/rounded_input_field.dart';
import 'package:pi_data/components/rounded_password_field.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/bottom_navigation_bar.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.10),
            Text("Pidata",style: TextStyle(fontFamily: 'logoFont',fontSize:size.width * 0.20,color:primaryColor),),
            Text("currency",style: TextStyle(fontFamily: 'primaryFont',fontSize:size.width * 0.10,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "KAYIT OL",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BottomBarWidget();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pi_data/Login/components/background.dart';
import 'package:pi_data/sign_up//sign_up_screen.dart';
import 'package:pi_data/components/already_have_an_account_acheck.dart';
import 'package:pi_data/components/rounded_button.dart';
import 'package:pi_data/components/rounded_input_field.dart';
import 'package:pi_data/components/rounded_password_field.dart';
import 'package:pi_data/config/colors.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

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
            SizedBox(height: size.height * 0.03),
            Text("Pidata",style: TextStyle(fontFamily: 'logoFont',fontSize:size.width * 0.20,color:primaryColor),),
            Text("currency",style: TextStyle(fontFamily: 'primaryFont',fontSize:size.width * 0.10,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ YAP",
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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

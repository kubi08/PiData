import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData buttonIcon;
  final String title;
  final Function function;
  final Color textColor;
  final Color buttonBackgroundColor;

  const CustomButtonWidget(
      {Key key,
      this.buttonIcon,
      this.title,
      this.function,
      this.textColor,
      this.buttonBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 320,
      child: RaisedButton.icon(
          onPressed: () {
            print('Button Clicked.');
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          label: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            buttonIcon,
            color: Colors.white,
          ),
          textColor: textColor,
          splashColor: Colors.red,
          color: buttonBackgroundColor),
    );
  }
}

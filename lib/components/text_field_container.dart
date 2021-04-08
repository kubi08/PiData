import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
            color: primaryColor,
            width: 0.5,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget > {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Icon(Icons.menu,size: 30,color: primaryColor,),
        Text("artvin sepeti",style: TextStyle(color: primaryColor,fontFamily: 'secondFont',fontSize: 30),),
        Icon(Icons.shopping_cart_outlined,size: 30,color: primaryColor,)
      ],
    );


  }
}
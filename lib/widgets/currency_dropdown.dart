import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';

class DropdownMenuWidget extends StatefulWidget {
  @override
  _DropdownMenuWidgetState createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(0.0),
        child: DropdownButton<String>(
          underline: Container(color: Colors.transparent),
          value: _chosenValue,
          style: TextStyle(color: Colors.black),
          items: <String>['Dolar', 'Euro', 'Lari', 'Sterlin',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child:   SizedBox(
                width: 100.0, // for example
                child: Text(value, textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,color: secondaryColor,fontWeight:FontWeight.w500),),
              ),
            );
          }).toList(),
          hint: SizedBox(
            width: 100.0, // for example
            child: Text("Para Birimi", textAlign: TextAlign.center,style:TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500) ,),
          ),

          onChanged: (String value) {
            setState(() {
              _chosenValue = value;
            });
          },
        ),
      ),
    );
  }
}

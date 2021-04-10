import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

class CountryListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height: 70,
        alignment: Alignment.center,
        child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade200)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                width: double.infinity,
                child: CountryListPick(
                  initialSelection: '+90',
                  onChanged: (CountryCode code) {},
                ),
              ),
            )));
  }
}

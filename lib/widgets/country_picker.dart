import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';

  @override
  Widget countryPicker(BuildContext context) {
    return  CountryListPick(

        pickerBuilder: (context, CountryCode countryCode){
          return Row(
            children: [
              Image.asset(
                countryCode.flagUri,
                package: 'country_list_pick',
              ),
              Text(countryCode.code),
              Text(countryCode.dialCode),
            ],
          );
        },

        theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: true,
          isShowCode: true,
          isDownIcon: true,
          showEnglishName: true,
        ),
        // Set default value
        initialSelection: '+62',
        // or
        // initialSelection: 'US'
        onChanged: (CountryCode code) {
          print(code.name);
          print(code.code);
          print(code.dialCode);
          print(code.flagUri);
        },
        useUiOverlay: true,

        useSafeArea: false
    );
  }


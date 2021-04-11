import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier {
  String startDate = "20/05/2019";
  String endDate = "11/04/2021";

  startDateProvider() {
    startDate = "20/05/2019";
    notifyListeners();
  }

  endDateProvider() {
    endDate = "20/05/2019";
    notifyListeners();
  }
}

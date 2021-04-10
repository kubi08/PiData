import 'package:flutter/material.dart';
import 'package:pi_data/pages/currency_calculation.dart';
import 'package:pi_data/pages/currency_chart.dart';
import 'package:pi_data/pages/currency_definition.dart';
import 'package:pi_data/pages/currency_list.dart';
import 'package:pi_data/pages/currency_update.dart';


class BottomBarWidget extends StatefulWidget {

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {

  int currentTabIndex = 0;
  CurrencyCalculationPage currencyCalculationPage;
  CurrencyChartPage currencyChartPage;
  CurrencyDefinitionPage currencyDefinitionPage;
  CurrencyListPage currencyListPage;
  CurrencyUpdatePage currencyUpdatePage;
  Widget currentPage;
  List<Widget> pages;
  @override
  void initState() {

    super.initState();
    currencyCalculationPage=CurrencyCalculationPage();
    currencyChartPage=CurrencyChartPage();
    currencyDefinitionPage=CurrencyDefinitionPage();
    currencyListPage=CurrencyListPage();
    currencyUpdatePage=CurrencyUpdatePage();
    pages= [currencyDefinitionPage,currencyUpdatePage,
            currencyListPage,currencyCalculationPage,
            currencyChartPage];
    currentPage =currencyDefinitionPage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(icon:Icon(Icons.money_off_csred_outlined), label: "Tanımla"),
          BottomNavigationBarItem(icon:Icon(Icons.update_outlined), label: "Güncelle"),
          BottomNavigationBarItem(icon:Icon(Icons.format_line_spacing_outlined), label: "Listele"),
          BottomNavigationBarItem(icon:Icon(Icons.calculate_outlined), label: "Hesapla"),
          BottomNavigationBarItem(icon:Icon(Icons.insert_chart_outlined_outlined), label: "Grafik"),
        ],
      ),
      body: currentPage,
    );
  }


}
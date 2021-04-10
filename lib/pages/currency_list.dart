import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/slide_drawer_menu.dart';

class CurrencyListPage extends StatefulWidget {
  @override
  _CurrencyListPageState createState() => _CurrencyListPageState();
}

class _CurrencyListPageState extends State<CurrencyListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SliderMenuContainer(
        appBarColor: Colors.white,
        drawerIconSize: 25,
        isTitleCenter: false,
        appBarPadding: const EdgeInsets.only(top: 25),
        appBarHeight: 81,
        drawerIconColor: Colors.grey.shade700,
        title: Text(
          '  Para Tanımlama',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontFamily: 'primaryFont'),
        ),
        sliderMenu: SlideDrawerMenuWidget(),
        sliderMain:Container(
            color: Colors.grey.shade500.withOpacity(0.1),
            child: ListView(
              children: [
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/dolar_money.png'),
                    ),
                    title: Text('Dolar'),
                    subtitle: Text("8.65"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/euro_money.png'),
                    ),
                    title: Text('Euro'),
                    subtitle: Text("9.65"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/lari_money.png'),
                    ),
                    title: Text('Lari'),
                    subtitle: Text("1.25"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/riyal_money.png'),
                    ),
                    title: Text('Riyal'),
                    subtitle: Text("2.90"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/yuan_money.png'),
                    ),
                    title: Text('Yuan'),
                    subtitle: Text("8.65"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

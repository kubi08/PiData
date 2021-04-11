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
      appBar: AppBar(
        backgroundColor: primaryColor,
        title:Text('PidataSoft',
        style: TextStyle(color: whiteColor,fontSize: 30,fontFamily:'primaryFont',height: 2)),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        margin:EdgeInsets.only(left: 10,right: 10) ,
        color: Colors.grey.shade300.withOpacity(0.1),
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/dolar_money.png'),
                ),
                title: Text('Dolar'),
                subtitle: Row(
                  children: [
                    Text("9.35 - "),
                    Text("2.75"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_down_outlined,color: primaryColor),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/euro_money.png'),
                ),
                title: Text('Euro'),
                subtitle: Row(
                  children: [
                    Text("4.85 - "),
                    Text("9.75"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_down_outlined,color: primaryColor),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/lari_money.png'),
                ),
                title: Text('Lari'),
                subtitle:Row(
                  children: [
                    Text("6.15 - "),
                    Text("2.45"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_up_rounded,color: greenColor,),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/riyal_money.png'),
                ),
                title: Text('Riyal'),
                subtitle: Row(
                  children: [
                    Text("9.125 - "),
                    Text("7.75"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_down_outlined,color: primaryColor),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/yuan_money.png'),
                ),
                title: Text('Yuan'),
                subtitle:Row(
                  children: [
                    Text("2.35 - "),
                    Text("5.75"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_up_rounded,color: greenColor),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/euro_money.png'),
                ),
                title: Text('Euro'),
                subtitle: Row(
                  children: [
                    Text("7.58 - "),
                    Text("9.75"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_down_outlined,color: primaryColor),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/lari_money.png'),
                ),
                title: Text('Lari'),
                subtitle: Row(
                  children: [
                    Text("1.25"),
                    Text("1.25"),
                  ],
                ),
                trailing: Icon(Icons.arrow_circle_up_rounded,color: greenColor,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pi_data/config/colors.dart';

class SlideDrawerMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(top: 15,bottom: 5),
                        width: 130,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/pidata_logo.png"),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Pidata Yazılım",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.person_outlined,
                  color: primaryColor,
                  size: 25,
                ),
                title: Text(
                  "Müşteri Girişi",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerLoginPage(),));
                },
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(
                  Icons.build_outlined,
                  color: primaryColor,
                  size: 25,
                ),
                title: Text(
                  "Servis Girişi",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeLoginPage(),));
                },
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: primaryColor,
                  size: 25,
                ),
                title: Text(
                  "Yardım ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
               //   Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage(),));
                },
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: primaryColor,
                  size: 25,
                ),
                title: Text(
                  "Hakkında",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
                },
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_rounded,
                  color: primaryColor,
                  size: 25,
                ),
                title: Text(
                  "Çıkış",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
              Divider(
                height: 0,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        )
      ],
    );
  }
}

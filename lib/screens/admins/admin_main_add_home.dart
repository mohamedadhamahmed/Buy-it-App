import 'package:buy_it/screens/admins/admin_home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'create_admin.dart';

class Admin_Main_Add_Home extends StatefulWidget {
  static String id = 'Admin_Main_Add_Home';
  @override
  _Admin_Main_Add_HomeState createState() => _Admin_Main_Add_HomeState();
}

class _Admin_Main_Add_HomeState extends State<Admin_Main_Add_Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KMainColor,

      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Image(
                        image: AssetImage("assets/images/icons/buyicon.png")),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      left: MediaQuery.of(context).size.width * 0.41,
                      child: Text(
                        'Buy It',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Pacifico'),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: FlatButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: ()  {
                  Navigator.pushNamed(context, Create_Admin.id);
                },
                child: Text(
                  'Create Admin Account',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: FlatButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: ()  {
                  Navigator.pushNamed(context, Admin_Home_Screen.id);
                },
                child: Text(
                  'Home Admin Screen',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}

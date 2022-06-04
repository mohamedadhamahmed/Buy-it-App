import 'package:buy_it/screens/admins/admins_screen.dart';
import 'package:buy_it/services/auth.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../customers/login_screen.dart';
import 'add_product.dart';

class Admin_Home_Screen extends StatefulWidget {
  static String id = 'Admin_Home_Screen';
  @override
  _Admin_Home_ScreenState createState() => _Admin_Home_ScreenState();
}

class _Admin_Home_ScreenState extends State<Admin_Home_Screen> {
  final auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () async {
                await auth.signOut();
                Navigator.pushNamed(context, Admins.id);
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage("assets/images/icons/buyicon.png")
          ),

          SizedBox(
            height: 30,
            width: double.infinity,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pushNamed(context, Add_product.id);
            },
            child: Text(
              '  Add Prodect  ',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              onPressed: () {},
              child: Text(
                'Updata Prodect',
                style: TextStyle(color: Colors.white),
              )),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              onPressed: () {},
              child: Text(
                ' Delete Prodect',
                style: TextStyle(color: Colors.white),
              )),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              onPressed: () {},
              child: Text(
                '    Show Order  '  ,
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}

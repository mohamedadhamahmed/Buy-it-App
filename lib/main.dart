import 'package:buy_it/screens/admins/add_product.dart';
import 'package:buy_it/screens/admins/admin_home_screen.dart';
import 'package:buy_it/screens/admins/admin_main_add_home.dart';
import 'package:buy_it/screens/admins/admins_screen.dart';
import 'package:buy_it/screens/admins/create_admin.dart';
import 'package:buy_it/screens/home_screen.dart';
import 'package:buy_it/screens/customers/login_screen.dart';
import 'package:buy_it/screens/customers/signup_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Login_Screen.id,
      routes: {
        Login_Screen.id: (context) => Login_Screen(),
        Signup_Screen.id: (context) => Signup_Screen(),
        Home.id:(context)=>Home(),
        Admins.id:(context)=>Admins(),
        Admin_Home_Screen.id:(context)=>Admin_Home_Screen(),
        Admin_Main_Add_Home.id:(context)=>Admin_Main_Add_Home(),
        Create_Admin.id:(context)=>Create_Admin(),
        Add_product.id:(context)=>Add_product()

      },
    );
  }
}

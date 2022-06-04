import 'package:buy_it/screens/customers/login_screen.dart';
import"package:flutter/material.dart";
import 'package:buy_it/services/auth.dart';
class Home extends StatefulWidget {
  static String id='Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);

        }),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: ()async{

 await auth.signOut();
 Navigator.pushNamed(context, Login_Screen.id);
 print('//////buy+++++++');

          }),
        ],

      ),
    );
  }
}

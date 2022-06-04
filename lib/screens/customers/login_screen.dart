import 'package:buy_it/screens/admins/admins_screen.dart';
import 'package:buy_it/screens/customers/signup_screen.dart';
import 'package:buy_it/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buy_it/constants.dart';
import 'package:buy_it/services/auth.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../home_screen.dart';

class Login_Screen extends StatefulWidget {
  static String id = "MyHomePage";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login_Screen> {
  GlobalKey<ScaffoldState> scaffol_login_dkey=  GlobalKey<ScaffoldState>();
  GlobalKey<FormState> form_login_key=GlobalKey<FormState>();
  TextEditingController textpassword=TextEditingController();
  TextEditingController textemail=TextEditingController();
  String password;
  String email;
  final auth = Auth();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffol_login_dkey,
      backgroundColor: KMainColor,
      body: Form(
        key: form_login_key,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: height * 0.03,
                      left: width * 0.35,
                      child: Image(
                          image: AssetImage("assets/images/icons/buyicon.png")),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.165,
                        left: MediaQuery.of(context).size.width * 0.38,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Buy it",
                              style: TextStyle(fontSize: 25.0,color: Colors.black,fontFamily: "Pacifico"),
                            ),
                            //SizedBox(width: 20.0, height: 5.0),
                            RotateAnimatedTextKit(
                                onTap: () {
                                  print("Tap Event");
                                },
                                text: ["Shorts", "Shirts", "Trousers", "Dresses",
                                "Devices","Everthink","Here"],
                                textStyle: TextStyle(color: Colors.black,fontSize: 20.0, fontFamily: "Pacifico"),
                                textAlign: TextAlign.start
                            ),
                          ],
                        ),
                    )

                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            Custom_TextField(
              hient: "Enter Your Email",
              icon: Icons.email,
              textEditingController: textemail,
              onclick: (value) {
                email = value;
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Custom_TextField(
              hient: "Enter Your password",
              icon: Icons.lock,
              textEditingController: textpassword,
              onclick: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () async {
                    if (form_login_key.currentState.validate()) {
                      //do some thing
                      form_login_key.currentState.save();
                      print('+++++++++++++++++');
                      try {
                        FirebaseUser user = await auth.signin(email, password);

                        print('+++++++++++f++++++');

                        if (user.uid != null) {
                          textemail.clear();
                          textpassword.clear();
                          Navigator.pushNamed(context, Home.id);
                        }
                      } catch (e) {
                        textemail.clear();
                        textpassword.clear();
                        SnackBar snackbar = SnackBar(
                          content: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(e.message)),
                          backgroundColor: Colors.grey,
                        );
                        scaffol_login_dkey.currentState.showSnackBar(snackbar);
                      }
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: height * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Signup_Screen.id);
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  " have account admin ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Admins.id);
                    },
                    child: Text(
                      "Click here",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )

          ],
        ),
      ),
    );
  }
}

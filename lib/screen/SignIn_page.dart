// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import '../component/Alertdialouge.dart';
import '../component/loginpage.dart';
import '../component/signuppage_comp.dart';

import 'First_foodtype_page.dart';

class Sign_In extends StatefulWidget {
  static String ID = "sign in";

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  late String _email;

  late String _password;

  bool saving = false;

  void savingtrue() {
    setState(() {
      saving = true;
    });
  }

  void savingfalse() {
    setState(() {
      saving = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loginformat_page(
      saving: saving,
      list_widget: [
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //  children: [

        // ModalProgressHUD(
        //   inAsyncCall: saving,
        //   child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: "logo",
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4, 7),
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ],
                    image:
                        DecorationImage(image: AssetImage("image/logo.jpg"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text("Sign IN",
                  textAlign: TextAlign.center, style: textStyle),
            ),
            emailbox(Onchanged: (value) {
              _email = value;
              print(value);
            }),
            passwordbox(Onchanged: (value) {
              _password = value;
              print(value);
            }),
            login_button(
                Textt: "Sign In",
                onTap: () async {
                  savingtrue();
                  try {
                    if (_email != null && _password != null) {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: _email, password: _password);
                        Navigator.pushNamed(context, Firstpage_food.ID);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showAlertDialog(
                              context, 'No user found for that email.');
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          showAlertDialog(context,
                              'Wrong password provided for that user.');
                          print('Wrong password provided for that user.');
                        }
                      }
                    }
                  } catch (e) {}
                  savingfalse();
                  // Sign_check(_email, _password);

                  // Navigator.pushNamed(context, Firstpage_food.ID);
                }),
            login_button(
                Textt: "Sign In Anonymous",
                onTap: () {
                  Navigator.pushNamed(context, Firstpage_food.ID);
                }),
          ],
        ),
        //),

        SizedBox(
          height: MediaQuery.of(context).size.height - ratio_height(context, 2),
        )
      ],
    );
    // ]);
  }
}

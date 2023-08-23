// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:image_from_firebase_public/screen/ForgotPasswordPage.dart';
import 'package:image_from_firebase_public/screen/Starting_page3.dart';
import '../component/Alertdialouge.dart';
import '../component/Login_Component.dart';

import '../component/Sign_TextField.dart';

import 'Firstpage_Food_Page.dart';

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
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return loginformat_page_portrait(
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
                    height: ratio_height(context, 100), // 100,
                    width: ratio_width(context, 100), //100,
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
                        image: DecorationImage(image: AssetImage("image/logo.jpg"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("Sign IN", textAlign: TextAlign.center, style: textStyle),
                ),
                emailbox(
                    Orientation: Portraitt.ID,
                    Onchanged: (value) {
                      _email = value;
                      print(value);
                    }),
                passwordbox(
                    Oreintation: Portraitt.ID,
                    Onchanged: (value) {
                      _password = value;
                      print(value);
                    }),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => ForgotPasswordPage()));
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                login_button(
                    Textt: "Sign In",
                    onTap: () async {
                      savingtrue();
                      try {
                        if (_email != null && _password != null) {
                          try {
                            UserCredential userCredential =
                                await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
                            FirebaseAuth.instance.userChanges().listen((User? user) {
                              if (user == null) {
                                print('User is currently signed out!');
                              } else {
                                print('User is signed in!');
                              }
                            });
                            Navigator.pop(context);
                            Navigator.pushNamed(context, Starting_Page_3.ID);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              showAlertDialog(context, 'No user found for that email.');
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              showAlertDialog(context, 'Wrong password provided for that user.');
                              print('Wrong password provided for that user.');
                            }
                          }
                        }
                      } catch (e) {}
                      savingfalse();
                      // Sign_check(_email, _password);

                      // Navigator.pushNamed(context, Firstpage_food.ID);
                    }),
                // login_button(
                //     Textt: "Sign In Anonymous",
                //     onTap: () {
                //       Navigator.pushNamed(context, Starting_Page_3.ID);
                //     }),
              ],
            ),
            //),

            SizedBox(
              height: MediaQuery.of(context).size.height - ratio_height(context, 2),
            )
          ],
        );
      } else {
        return loginformat_page_landscape(
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
                    height: ratio_height(context, 130), // 100,
                    width: ratio_width(context, 130), //100,
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
                        image: DecorationImage(image: AssetImage("image/logo.jpg"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("Sign IN", textAlign: TextAlign.center, style: textStyle),
                ),
                emailbox(
                    Orientation: Landscapee.ID,
                    Onchanged: (value) {
                      _email = value;
                      print(value);
                    }),
                passwordbox(
                    Oreintation: Landscapee.ID,
                    Onchanged: (value) {
                      _password = value;
                      print(value);
                    }),
                login_button_landscape(
                    Textt: "Sign In",
                    onTap: () async {
                      savingtrue();
                      try {
                        if (_email != null && _password != null) {
                          try {
                            UserCredential userCredential =
                                await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
                            FirebaseAuth.instance.userChanges().listen((User? user) {
                              // if (user == null) {
                              //   print('User is currently signed out!');
                              // } else {
                              //   print('User is signed in!');
                              // }
                            });
                            Navigator.pop(context);
                            Navigator.pushNamed(context, Starting_Page_3.ID);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              showAlertDialog(context, 'No user found for that email.');
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              showAlertDialog(context, 'Wrong password provided for that user.');
                              print('Wrong password provided for that user.');
                            }
                          }
                        }
                      } catch (e) {}
                      savingfalse();
                      // Sign_check(_email, _password);

                      // Navigator.pushNamed(context, Firstpage_food.ID);
                    }),
                // login_button_landscape(
                //     Textt: "Sign In Anonymous",
                //     onTap: () {
                //       Navigator.pushNamed(context, Starting_Page_3.ID);
                //     }),
              ],
            ),
            //),
            Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + MediaQuery.of(context).size.height * 0.95))
            // SizedBox(height: MediaQuery.of(context).size.height * 0.95)
          ],
        );
      }
    });
    // ]);
  }
}

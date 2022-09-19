// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../component/Alertdialouge.dart';
import '../component/Detail_to_Firebase.dart';
import '../component/loginpage.dart';
import '../component/signuppage_comp.dart';
import 'O_First_page_foodlist.dart';

class Sign_Up extends StatefulWidget {
  static String ID = "sign up";

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  late String _email;

  late String _password;
  late String _name;
  late String _ph_number;
  late String _address;

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
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    return ModalProgressHUD(
      inAsyncCall: saving,
      dismissible: true,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: totalheight,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffDE7544), Color(0x0DDBEC17)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: ratio_height(context, 40) //40,
                        ),
                    Hero(
                      tag: "logo",
                      child: Container(
                        height: 160,
                        width: 160,
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
                            image: DecorationImage(
                                image: AssetImage("image/logo.jpg"))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Text("Sign UP",
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
                    generalbox(
                      label: "Name",
                      keyboardtype: TextInputType.name,
                      Onchanged: (p0) {
                        _name = p0;
                        print(p0);
                      },
                    ),
                    generalbox(
                      label: "Phone Number",
                      keyboardtype: TextInputType.phone,
                      Onchanged: (p0) {
                        _ph_number = p0;
                        print(p0);
                      },
                    ),
                    generalbox(
                      label: "Address",
                      keyboardtype: TextInputType.streetAddress,
                      Onchanged: (p0) {
                        _address = p0;
                        print(p0);
                      },
                    ),
                    SizedBox(
                      height: ratio_height(context, 20), //20,
                    ),
                    login_button(
                        Textt: "Sign UP",
                        onTap: () async {
                          savingtrue();
                          try {
                            if (_email != null &&
                                _password != null &&
                                _name != null &&
                                _ph_number != null &&
                                _address != null) {
                              // print(_email +
                              //     "\n" +
                              //     _password +
                              //     "\n" +
                              //     _name +
                              //     "\n" +
                              //     _ph_number +
                              //     "\n" +
                              //     _address +
                              //     "\n");
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: _email, password: _password);
                                Detail_to_firebase(
                                    _email, _name, _ph_number, _address);
                                Navigator.pushNamed(
                                    context, Firstpage_foodtype.ID);
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  showAlertDialog(context, 'weak-password');
                                  print('The password provided is too weak.');
                                } else if (e.code == 'email-already-in-use') {
                                  showAlertDialog(context,
                                      'The account already exists for that email');
                                  print(
                                      'The account already exists for that email.');
                                }

                                // Map<String, String> info = {
                                //   "Email": _email,
                                //   "Name": _name,
                                //   "Phone Number": _ph_number,
                                //   "Address": _address,
                                // };
                                // var db = FirebaseFirestore.instance
                                //     .collection("User_detail");
                                // db
                                //     .doc(_email)
                                //     .set(info)
                                //     .then((value) => print("sucesss"));
                              } catch (e) {
                                print(e);
                              }
                            }
                          } catch (e) {}
                          savingfalse();
                          // resitration(_email, _password);
                          // print("pressed");
                          // Navigator.pushNamed(context, Firstpage_foodtype.ID);
                        }),
                    login_button(
                        Textt: "Sign up Anonymous",
                        onTap: () {
                          Navigator.pushNamed(context, Firstpage_foodtype.ID);
                        }),
                    SizedBox(
                      height: totalheight / 2,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

// Future<void> resitration(String _email, String _password) async {
//   try {
//     UserCredential userCredential = await FirebaseAuth.instance
//         .createUserWithEmailAndPassword(email: _email, password: _password);
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       print('The password provided is too weak.');
//     } else if (e.code == 'email-already-in-use') {
//       print('The account already exists for that email.');
//     }
//   } catch (e) {
//     print(e);
//   }
// }


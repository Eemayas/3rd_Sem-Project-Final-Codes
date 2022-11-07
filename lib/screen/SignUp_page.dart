// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../component/Alertdialouge.dart';
import '../Firebase/Detail_to_Firebase.dart';
import '../component/Initilization_Favorities.dart';
import '../component/Login_Component.dart';
import '../component/Sign_TextField.dart';
import 'Firstpage_Food_Page.dart';
import 'Starting_Page3.dart';
import 'oldpages/O_First_page_foodlist.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    //initilizationn();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    String Error = 'null';
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    return ModalProgressHUD(
      inAsyncCall: saving,
      dismissible: true,
      child: Scaffold(
          key: _scaffoldKey,
          resizeToAvoidBottomInset: true,
          body: Container(
            height: totalheight,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffDE7544), Color(0x0DDBEC17)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
            child: OrientationBuilder(builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
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
                        generalbox(
                          orientation: Portraitt.ID,
                          label: "Name",
                          keyboardtype: TextInputType.name,
                          Onchanged: (p0) {
                            _name = p0;
                            print(p0);
                          },
                        ),
                        generalbox(
                          orientation: Portraitt.ID,
                          label: "Phone Number",
                          keyboardtype: TextInputType.phone,
                          Onchanged: (p0) {
                            _ph_number = p0;
                            print(p0);
                          },
                        ),
                        generalbox(
                          orientation: Portraitt.ID,
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
                                  try {
                                    final newUser = await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: _email, password: _password);
                                    Detail_to_firebase(
                                        _email, _name, _ph_number, _address);
                                    initilization(Emaill: _email);

                                    // print("try1");
                                    // // SchedulerBinding.instance
                                    // //     .addPostFrameCallback((_) {
                                    // //   Navigator.pop(context);
                                    // // });
                                    // print("try2");
                                  } on FirebaseAuthException catch (e) {
                                    Error = e.code;
                                  } catch (e) {
                                    print(e);
                                  }
                                  if (Error == "null") {
                                    Navigator.pushNamed(
                                        context, Starting_Page_3.ID);
                                  } else {
                                    if (Error == 'weak-password') {
                                      showAlertDialogSignin(
                                          context, 'weak-password', OnTap: () {
                                        setState(() {});
                                      });
                                      print(
                                          'The password provided is too weak.');
                                    } else if (Error ==
                                        'email-already-in-use') {
                                      showAlertDialogSignin(context,
                                          'The account already exists for that email',
                                          OnTap: () {
                                        setState(() {});
                                      });
                                      print(
                                          'The account already exists for that email.');
                                    }
                                  }
                                }
                              } catch (e) {}
                              savingfalse();

                              // resitration(_email, _password);
                              // print("pressed");
                              // Navigator.pushNamed(context, Firstpage_foodtype.ID);
                            }),
                        // login_button(
                        //   Textt: "Next",
                        //   onTap: () {
                        //     if (FirebaseAuth.instance.currentUser?.uid ==
                        //         null) {
                        //       return showAlertDialog(
                        //           context, "Please create account");
                        //     } else {
                        //       Navigator.pushNamed(context, Starting_Page_3.ID);
                        //     }
                        //   },
                        // ),
                        SizedBox(
                          height: totalheight / 2,
                        )
                      ],
                    ),
                  ],
                );
              } else {
                return ListView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
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
                        generalbox(
                          orientation: Landscapee.ID,
                          label: "Name",
                          keyboardtype: TextInputType.name,
                          Onchanged: (p0) {
                            _name = p0;
                            print(p0);
                          },
                        ),
                        generalbox(
                          orientation: Landscapee.ID,
                          label: "Phone Number",
                          keyboardtype: TextInputType.phone,
                          Onchanged: (p0) {
                            _ph_number = p0;
                            print(p0);
                          },
                        ),
                        generalbox(
                          orientation: Landscapee.ID,
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
                        login_button_landscape(
                            Textt: "Sign UP",
                            onTap: () async {
                              savingtrue();
                              try {
                                if (_email != null &&
                                    _password != null &&
                                    _name != null &&
                                    _ph_number != null &&
                                    _address != null) {
                                  try {
                                    final newUser = await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: _email, password: _password);
                                    Detail_to_firebase(
                                        _email, _name, _ph_number, _address);
                                    initilization(Emaill: _email);
                                  } on FirebaseAuthException catch (e) {
                                    Error = e.code;
                                  } catch (e) {
                                    print(e);
                                  }
                                  if (Error == "null") {
                                    Navigator.pushNamed(
                                        context, Starting_Page_3.ID);
                                  } else {
                                    if (Error == 'weak-password') {
                                      showAlertDialogSignin(
                                          context, 'weak-password', OnTap: () {
                                        setState(() {});
                                      });
                                      print(
                                          'The password provided is too weak.');
                                    } else if (Error ==
                                        'email-already-in-use') {
                                      showAlertDialogSignin(context,
                                          'The account already exists for that email',
                                          OnTap: () {
                                        setState(() {});
                                      });
                                      print(
                                          'The account already exists for that email.');
                                    }
                                  }
                                }
                              } catch (e) {}
                              savingfalse();

                              // resitration(_email, _password);
                              // print("pressed");
                              // Navigator.pushNamed(context, Firstpage_foodtype.ID);
                            }),

                        // login_button_landscape(
                        //     Textt: "Sign up Anonymous",
                        //     onTap: () {
                        //       Navigator.pushNamed(
                        //           context, Firstpage_foodtype.ID);
                        //     }),
                        SizedBox(
                          height: totalheight / 2,
                        )
                      ],
                    ),
                  ],
                );
              }
            }),
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


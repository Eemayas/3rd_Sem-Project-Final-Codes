// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/screen/Starting_page2.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:image_from_firebase_public/screen/checkpage.dart';
import '../component/frontphoto.dart';
import '../component/slider_component.dart';
import '../constanst/constanst.dart';
import 'First_foodtype_page.dart';

class startingpage1 extends StatefulWidget {
  static String ID = "startingpage1";
  @override
  State<startingpage1> createState() => _startingpage1State();
}

class _startingpage1State extends State<startingpage1> {
  bool log_in = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user == null) {
        log_in = false;
        print('User is currently signed out!');
      } else {
        log_in = true;
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration_backgroundimage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Hero(
            tag: "firstphoto",
            child: Front_photo(
              height: ratio_height(context, 275),
              widthh: ratio_width(context, 275),
            ),
            // Front_photo(height: 275, widthh: 275),
          ),
          Text(
            "Cooking Experience\nLike a Chef",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: <Color>[
                      Color(0xffEA5753),
                      Color(0xffCC540D),
                    ],
                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
          ),
          Center(
              child: SliderButton(
            listcolors: [Color(0xffF89B29), Color(0xffFF0F7B)],
            action: () {
              // StreamBuilder<User?>(
              //     stream: FirebaseAuth.instance.authStateChanges(),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         // Navigator.of(context).pop();
              //         // Navigator.pushNamed(context, Firstpage_food.ID);
              //         return Firstpage_food();
              //       } else {
              //         return startingpage2();
              //       }
              //     });
              // if (log_in) {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Checkpage()));
              // } else {
              //   Navigator.of(context).pop();
              //   Navigator.pushNamed(context, startingpage2.ID);
              // }
            },
            alignLabel: Alignment.center,
            baseColor: Colors.white,
            highlightedColor: Color(0xffEA5753),
            label: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            icon: Icon(Icons.arrow_right_alt_outlined),
          ))
        ],
      ),
    ));
  }
}

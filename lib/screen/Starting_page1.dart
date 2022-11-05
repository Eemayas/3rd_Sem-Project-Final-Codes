// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/Provider_comp.dart';
import 'package:provider/provider.dart';
import 'Starting_Page2.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:image_from_firebase_public/screen/Check_Sign_in_out_Page.dart';
import '../component/Photo_Starting_Page1.dart';
import '../component/Slider_component.dart';
import '../constanst/constanst.dart';
import 'Firstpage_Food_Page.dart';

class Starting_Page_1 extends StatefulWidget {
  static String ID = "startingpage1";
  @override
  State<Starting_Page_1> createState() => _Starting_Page_1State();
}

class _Starting_Page_1State extends State<Starting_Page_1> {
  bool log_in = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user == null) {
        log_in = false;
        print('User is currently signed out!(Strating PAge)');
      } else {
        log_in = true;
        print('User is signed in!(Strating PAge)');
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
      child: SafeArea(
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Startingpage_Photo(
                  Side: MediaQuery.of(context).size.width * 0.5,
                ),
                Staringpage_Text(),
                Startingpage_Slider()
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Startingpage_Photo(
                  Side: MediaQuery.of(context).size.height * 0.7,
                )),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Staringpage_Text(), Startingpage_Slider()],
                  ),
                ),
              ],
            );
          }
        }),
      ),
    ));
  }
}

class Startingpage_Photo extends StatelessWidget {
  final double Side;

  const Startingpage_Photo({required this.Side});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "firstphoto",
      child: Center(
        child: Front_photo(
          height: Side, //ratio_width(context, 275),
          widthh: Side, //ratio_width(context, 275),
        ),
      ),
      // Front_photo(height: 275, widthh: 275),
    );
  }
}

class Startingpage_Slider extends StatelessWidget {
  const Startingpage_Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
        context.read<Emaill>().Provider_get_current_user();

        Navigator.of(context).pop();
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => Check_Sign_in_out_Page()));
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
    ));
  }
}

class Staringpage_Text extends StatelessWidget {
  const Staringpage_Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
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
    );
  }
}

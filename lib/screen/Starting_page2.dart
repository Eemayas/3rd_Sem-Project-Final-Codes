// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:image_from_firebase_public/screen/SignIn_Page.dart';

import '../component/Login_Component.dart';
import 'package:flutter/material.dart';

import 'SignUp_Page.dart';

class Starting_Page_2 extends StatelessWidget {
  static String ID = "secondpage2";
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return loginformat_page_portrait(
          saving: false,
          list_widget: [
            Hero(
              tag: "logo",
              child: Container(
                height: ratio_height(context, 100), // 100,
                width: ratio_width(context, 100), // 100,
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
            login_button(
                Textt: "Sign In",
                onTap: () {
                  print("pressed");
                  Navigator.pushNamed(context, Sign_In.ID);
                }),
            login_button(
                Textt: "Sign Up",
                onTap: () {
                  print("pressed");
                  Navigator.pushNamed(context, Sign_Up.ID);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height,
            )
          ],
        );
      } else {
        return loginformat_page_landscape(
          saving: false,
          list_widget: [
            Hero(
              tag: "logo",
              child: Container(
                height: ratio_height(context, 130), // 100,
                width: ratio_width(context, 130), // 100,
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
            login_button_landscape(
                Textt: "Sign In",
                onTap: () {
                  print("pressed");
                  Navigator.pushNamed(context, Sign_In.ID);
                }),
            login_button_landscape(
                Textt: "Sign Up",
                onTap: () {
                  print("pressed");
                  Navigator.pushNamed(context, Sign_Up.ID);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height,
            )
          ],
        );
      }
    });
  }
}

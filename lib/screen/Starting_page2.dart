// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:image_from_firebase_public/screen/SignIn_page.dart';

import '../component/loginpage.dart';
import 'package:flutter/material.dart';

import 'SignUp_page.dart';

class startingpage2 extends StatelessWidget {
  static String ID = "secondpage2";
  @override
  Widget build(BuildContext context) {
    return loginformat_page(
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
                image: DecorationImage(image: AssetImage("image/logo.jpg"))),
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
          height: 30 + MediaQuery.of(context).size.height,
        )
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import '../component/loginpage.dart';
import '../component/signuppage_comp.dart';

import 'foodtype_first_page.dart';

class Sign_In extends StatelessWidget {
  static String ID = "sign in";

  @override
  Widget build(BuildContext context) {
    return loginformat_page(
      list_widget: [
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //  children: [
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
                image: DecorationImage(image: AssetImage("image/logo.jpg"))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Text("Sign IN", textAlign: TextAlign.center, style: textStyle),
        ),
        emailbox(),
        passwordbox(),
        login_button(
            Textt: "Sign In",
            onTap: () {
              print("pressed");
              Navigator.pushNamed(context, Firstpage_food.ID);
            }),
        SizedBox(
          height: 30 + MediaQuery.of(context).size.height,
        )
      ],
    );
    // ]);
  }
}

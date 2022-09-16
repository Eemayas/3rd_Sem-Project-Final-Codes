// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';

import '../component/loginpage.dart';
import '../component/signuppage_comp.dart';
import 'O_First_page_foodlist.dart';

class Sign_Up extends StatelessWidget {
  static String ID = "sign up";

  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  SizedBox(
                    height: 40,
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
                  emailbox(),
                  passwordbox(),
                  generalbox(label: "Name", keyboardtype: TextInputType.name),
                  generalbox(
                      label: "Phone Number", keyboardtype: TextInputType.phone),
                  generalbox(
                      label: "Address",
                      keyboardtype: TextInputType.streetAddress),
                  SizedBox(
                    height: 20,
                  ),
                  login_button(
                      Textt: "Sign UP",
                      onTap: () {
                        print("pressed");
                        Navigator.pushNamed(context, Firstpage_foodtype.ID);
                      }),
                  SizedBox(
                    height: totalheight / 2,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

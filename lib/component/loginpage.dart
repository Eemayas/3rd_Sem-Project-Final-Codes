// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../constanst/constanst.dart';
import 'frontphoto.dart';
import "package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart";

class loginformat_page extends StatelessWidget {
  final List<Widget> list_widget;
  loginformat_page({required this.list_widget, required this.saving});
  final bool saving;
  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    double t0pgap = 30;
    double image_container_gap = 50;
    return ModalProgressHUD(
      inAsyncCall: saving,
      dismissible: true,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: SafeArea(
            child: Container(
              height: totalheight,
              width: totalwidth,
              decoration: boxDecoration_backgroundimage,
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: t0pgap),
                      Hero(
                          tag: "firstphoto",
                          child: Front_photo(
                            height: ratio_height(context, 220),
                            widthh: ratio_height(context, 220),
                          )
                          // Front_photo(height: 220, widthh: 220),
                          ),
                      SizedBox(height: image_container_gap),
                      Container(
                        height:
                            totalheight - image_container_gap - t0pgap - 259,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(55),
                                topRight: Radius.circular(55)),
                            gradient: LinearGradient(
                                colors: [Color(0xffE79292), Color(0xffDBEC17)],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: list_widget,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class login_button extends StatelessWidget {
  final String Textt;
  final Function onTap;
  login_button({required this.Textt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffF89B29), Color(0xffFF0F7B)],
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 7),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                Textt,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    color: Colors.white),
              ),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../constanst/constanst.dart';
import 'Photo_Starting_Page1.dart';
import "package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart";

class loginformat_page_portrait extends StatelessWidget {
  final List<Widget> list_widget;
  loginformat_page_portrait({required this.list_widget, required this.saving});
  final bool saving;
  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    double t0pgap = ratio_height(context, 30); //30;
    double image_container_gap = ratio_height(context, 50); //50;
    return ModalProgressHUD(
      inAsyncCall: saving,
      dismissible: true,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
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
                        height: totalheight -
                            image_container_gap -
                            t0pgap -
                            ratio_height(context, 259), //x-259,
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
          height: ratio_height(context, 50), // 50,
          width: ratio_width(context, 150), //150,
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
                overflow: TextOverflow.ellipsis,
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

class loginformat_page_landscape extends StatelessWidget {
  final List<Widget> list_widget;
  loginformat_page_landscape({required this.list_widget, required this.saving});
  final bool saving;
  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    double t0pgap = ratio_height(context, 30); //30;
    double image_container_gap = ratio_height(context, 50); //50;
    return ModalProgressHUD(
      inAsyncCall: saving,
      dismissible: true,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: SafeArea(
            child: Container(
              height: Total_Height(context),
              width: Total_Width(context),
              decoration: boxDecoration_backgroundimage,
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(height: t0pgap),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Hero(
                              tag: "firstphoto",
                              child: Front_photo(
                                height: Total_Width(context) *
                                    0.275, //ratio_height(context, 220),
                                widthh: Total_Width(context) *
                                    0.275, //ratio_height(context, 220),
                              )
                              // Front_photo(height: 220, widthh: 220),
                              ),
                          SizedBox(
                            height: Total_Width(context) * 0.65,
                          )
                        ],
                      ),
                      //SizedBox(height: image_container_gap),
                      Container(
                        width: Total_Width(context) *
                            0.5, // totalheight -image_container_gap -t0pgap -ratio_height(context, 259), //x-259,
                        height: Total_Height(context) * 2, //double.infinity,
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

class login_button_landscape extends StatelessWidget {
  final String Textt;
  final Function onTap;
  login_button_landscape({required this.Textt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          height: ratio_width(context, 20), // 50,
          width: ratio_height(context, 350), //150,
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
                overflow: TextOverflow.ellipsis,
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

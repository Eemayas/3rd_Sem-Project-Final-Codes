// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'foodname.dart';

List<BoxShadow> kBoxshadow = [
  BoxShadow(
    color: cblurshadow_foodtype_page,
    offset: const Offset(
      5.0,
      5.0,
    ),
    blurRadius: 10.0,
    spreadRadius: 2.0,
  ),
];

Decoration boxDecoration_backgroundimage = BoxDecoration(
  image: DecorationImage(image: AssetImage("image/backgroundimage.png")),
);
TextStyle textStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 28,
    foreground: Paint()
      ..shader = LinearGradient(
        colors: <Color>[
          Color(0xffEA5753),
          Color(0xffCC540D),
        ],
      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)));

Color cArrow_foodtype_page = Colors.black;
Color cPhotoframe_foodtype_page = Colors.white70;
Color cTextcontainer_foodtype_page = Colors.grey;
Color cFoodname_foodtype_page = Colors.redAccent;
Color cblurshadow_foodtype_page = Colors.greenAccent;

List secondpagelist = [
  foodtype_name_list.nAmerican,
  foodtype_name_list.nBritish,
  foodtype_name_list.nCaribbean,
  foodtype_name_list.nChinese,
  foodtype_name_list.nFrench,
  foodtype_name_list.nGreek,
  foodtype_name_list.nIndian,
  foodtype_name_list.nItalian,
  foodtype_name_list.nJapnese,
  foodtype_name_list.nMediterranean,
  foodtype_name_list.nMexican,
  foodtype_name_list.nMiddle_Eastern,
  foodtype_name_list.nMorccan,
  foodtype_name_list.nSpanish,
  foodtype_name_list.nThai,
  foodtype_name_list.nTurkish,
  foodtype_name_list.nVietnamese,
];
BoxDecoration apptheme_background = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xff05404A), Color(0xff1F7A7B)]));

Color kappbar_color = Color(0xff06282E);

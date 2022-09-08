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
];

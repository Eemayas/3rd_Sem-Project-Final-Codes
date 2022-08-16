import 'package:flutter/material.dart';

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

class Food {
  final String imagePath;

  final String title;

  Food(
    this.imagePath,
    this.title,
  );
}

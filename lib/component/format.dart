import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/photorecevier.dart';

import '../constanst/constanst.dart';

class format extends StatelessWidget {
  format({required this.photoname, required this.name, this.nextpage});
  final String? photoname;
  final String? name;
  final String? nextpage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 400,
          color: Colors.white38,
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: kBoxshadow,
                  borderRadius: BorderRadius.circular(20),
                  color: cTextcontainer_foodtype_page,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 37.5,
                    ),
                    Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'abrilfatface',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: cFoodname_foodtype_page),
                    ),
                  ],
                )),
          ],
        ),
        Container(
          //alignment: Alignment.center,
          height: 250,
          width: 250,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: cPhotoframe_foodtype_page,
            shape: BoxShape.circle,
            boxShadow: kBoxshadow,
          ),
          child: photoviewer('$photoname'),
        ),
        Column(
          children: [
            SizedBox(
              height: 325,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '$nextpage');
                  //navigate to the next page
                },
                child: Container(
                    decoration: BoxDecoration(
                      boxShadow: kBoxshadow,
                      borderRadius: BorderRadius.circular(10),
                      color: cArrow_foodtype_page,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.arrow_forward))),
          ],
        ),
      ],
    );
  }
}

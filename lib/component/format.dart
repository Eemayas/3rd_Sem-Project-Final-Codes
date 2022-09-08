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
    double kmaincontainer_height = MediaQuery.of(context).size.height / 2;
    double kmaincontainer_width = MediaQuery.of(context).size.width;
    double kphoto_text_height = kmaincontainer_height * 0.625;
    double kphoto_text_width = kmaincontainer_height * 0.625;
    double kphoto_container_height = kmaincontainer_height * 0.375;
    double kphoto_conatiner_width = double.infinity;
    double kTextbutton_height = kmaincontainer_height / 8;
    double kTextbutton_width = kmaincontainer_height / 8;

    TextStyle Name_text_style = TextStyle(
        fontSize: 30,
        fontFamily: 'abrilfatface',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: cFoodname_foodtype_page);

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: kmaincontainer_height,
          width: kmaincontainer_width,
          color: Colors.white38,
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
                height: kphoto_container_height,
                width: kphoto_conatiner_width,
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
                    Text("$name", style: Name_text_style),
                  ],
                )),
          ],
        ),
        Container(
          //alignment: Alignment.center,
          height: kphoto_text_height, //250
          width: kphoto_text_width, //250

          decoration: BoxDecoration(
            color: cPhotoframe_foodtype_page,
            shape: BoxShape.circle,
            boxShadow: kBoxshadow,
          ),
          child: offline('$photoname'),
          //photoviewer_format('$photoname'), //online from firebase
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                    height: kTextbutton_height,
                    width: kTextbutton_width,
                    child: Icon(Icons.arrow_forward))),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}

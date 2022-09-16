// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Front_photo extends StatelessWidget {
  final double height;
  final double widthh;
  Front_photo({required this.height, required this.widthh});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0,
      child: Container(
        width: widthh,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/Startingpage_photo.jpg"),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}

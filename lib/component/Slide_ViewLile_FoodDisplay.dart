import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constanst/constanst.dart';

class Slide_ViewLile_FoodDisplay extends StatelessWidget {
  final String foodname_Textt;
  final String img_url;
  final Function() OnTap;
  Slide_ViewLile_FoodDisplay(
      {required this.foodname_Textt,
      required this.OnTap,
      required this.img_url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          height: ratio_height(context, 340), //340,
          width: ratio_width(context, 244.5), // 244.5,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x40741F1F),
                  offset: Offset(4, 7),
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(65)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff741F1F), Color(0x00D9D9D9)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Hero(
              //   tag: "photo+$Textt",
              //   child:
              Container(
                height: ratio_height(context, 160), // 160,
                width: ratio_width(context, 160), //160,
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
                      image: CachedNetworkImageProvider(img_url),
                      fit: BoxFit.fill,
                    )),

                //DecorationImage(image: AssetImage("image/logo.jpg"))),
                //),
              ),
              // Hero(
              //     tag: "text+$Textt",
              //     child:
              Expanded(
                child: Text(foodname_Textt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: textStyle),
              ),
              //),
              Container(
                height: ratio_height(context, 51), //51,
                width: ratio_width(context, 75), //75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(65)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff741F1F), Color(0x00D9D9D9)])),
                child: Icon(
                  Icons.arrow_right_alt_sharp,
                  size: ratio_height(context, 40), //40,
                  shadows: [
                    Shadow(
                        color: Color(0xffEA5753),
                        blurRadius: 10,
                        offset: Offset(4, 4))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

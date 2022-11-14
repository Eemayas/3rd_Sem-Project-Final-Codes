import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constanst/constanst.dart';

class Slide_ViewLile_FoodDisplay extends StatelessWidget {
  final String foodname_Textt;
  final String img_url;
  final Function() OnTap;
  final String Device_Orientation;
  final bool isChefPage;
  Slide_ViewLile_FoodDisplay(
      {required this.foodname_Textt,
      required this.OnTap,
      required this.img_url,
      required this.Device_Orientation,
      required this.isChefPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          height: Device_Orientation == Portraitt.ID
              ? ratio_height(context, 340)
              : Total_Height(context), //340,
          width: Device_Orientation == Portraitt.ID
              ? ratio_width(context, 244.5)
              : Total_Width(context) * 0.4, // 244.5,
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
                height: Device_Orientation == Portraitt.ID
                    ? ratio_height(context, 160)
                    : ratio_height(context, 300), // 160,
                width: Device_Orientation == Portraitt.ID
                    ? ratio_width(context, 160)
                    : ratio_width(context, 300), //160,
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
                    image: isChefPage
                        ? DecorationImage(
                            image: AssetImage(img_url),
                            fit: BoxFit.fill,
                          )
                        : DecorationImage(
                            image: CachedNetworkImageProvider(img_url),
                            fit: BoxFit.fill,
                          )),

                //DecorationImage(image: AssetImage("image/logo.jpg"))),
                //),
              ),
              // Hero(
              //     tag: "text+$Textt",
              //     child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(foodname_Textt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: textStyle),
                ),
              ),
              //),
              Container(
                height: Device_Orientation == Portraitt.ID
                    ? ratio_height(context, 51)
                    : ratio_height(context, 90), //51,
                width: Device_Orientation == Portraitt.ID
                    ? ratio_width(context, 75)
                    : ratio_width(context, 100), //75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(65)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff741F1F), Color(0x00D9D9D9)])),
                child: Icon(
                  Icons.arrow_right_alt_sharp,
                  size: Device_Orientation == Portraitt.ID
                      ? ratio_height(context, 40)
                      : ratio_height(context, 60), //40,
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

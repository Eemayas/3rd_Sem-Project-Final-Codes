// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/Firebase/firebase_extractor.dart';

class Recipe_page extends StatefulWidget {
  final String Img_URL;
  final String foodname_text;
  final String Cuisines;
  Recipe_page(
      {required this.Img_URL,
      required this.foodname_text,
      required this.Cuisines});
  @override
  State<Recipe_page> createState() => _Recipe_pageState();
}

class _Recipe_pageState extends State<Recipe_page> {
  int _selectedtab = 1;
  double recipepage_photoheight = 200;

  @override
  Widget build(BuildContext context) {
    String foodname_text = widget.foodname_text;
    String Img_URL = widget.Img_URL;
    String Cuisines = widget.Cuisines;
    double total_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Container(
        height: total_height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/background2.png",
              ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: total_height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF6433)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: recipepage_photoheight,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(33)),
                                color: Colors.transparent,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(4, 7),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      Img_URL,
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                              height: recipepage_photoheight,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(33)),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0X00FFFFFF),
                                        Color(0xD9FF3D00)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter))),
                          SizedBox(
                            height: recipepage_photoheight,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  foodname_text,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                                color: _selectedtab == 1
                                    ? Color(0xffFF6433)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                                child: Text("Ingredeint",
                                    style: _selectedtab == 1
                                        ? TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)
                                        : TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xffFF6433)))),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedtab = 1;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                                color: _selectedtab == 2
                                    ? Color(0xffFF6433)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                                child: Text("Steps",
                                    style: _selectedtab == 2
                                        ? TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)
                                        : TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xffFF6433)))),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedtab = 2;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: total_height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "9 item",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff752A00)),
                      ),
                    ),
                    SizedBox(
                        height: total_height * 0.44,
                        child: _selectedtab == 1
                            ? new_firebase_extractor(
                                selection: 0,
                                foodlist_s: foodname_text,
                                foodtype_f: Cuisines)

                            // ? Listtile_recipe(
                            //     texttt: 'ingredient',
                            //   )
                            : new_firebase_extractor(
                                selection: 1,
                                foodlist_s: foodname_text,
                                foodtype_f: Cuisines))
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class Listtile_recipe extends StatelessWidget {
  final String texttt;
  Listtile_recipe({required this.texttt});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,

      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
          color: Color(0x20FFC5A4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      //child: detail
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.restaurant,
              color: Color(0xffFF5C00),
              size: 18,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                texttt,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.italic,
                    color: Color(0xffFF5C00)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

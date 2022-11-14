// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Firebase/Chef/ChefRecipeEXtractor.dart';
import '../constanst/constanst.dart';
import 'Timer_Page.dart';

class Recipe_FomChef extends StatefulWidget {
  Recipe_FomChef({Key? key, required this.FoodName}) : super(key: key);
  final String FoodName;

  @override
  State<Recipe_FomChef> createState() => _Recipe_FomChefState();
}

class _Recipe_FomChefState extends State<Recipe_FomChef> {
  int _selectedtab = 1;
  String ImgUrl =
      "https://www.shutterstock.com/image-vector/photo-coming-soon-vector-image-600w-1809858361.jpg";
  @override
  Widget build(BuildContext context) {
    double total_height = MediaQuery.of(context).size.height;
    double recipepage_photoheight = ratio_height(context, 200); //200;
    return Scaffold(
      body: Container(
        height: total_height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/background2.png",
              ),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: total_height * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: ratio_height(context, 20), //20,
                              left: 20,
                              right: 20),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      height: ratio_height(context, 40), //40
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFF6433)),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            ratio_height(context, 8)),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          size: ratio_height(context, 25), //25,
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                                Expanded(child: Container()),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CountdownPage(),
                                        ));
                                  },
                                  child: Container(
                                      height: ratio_height(context, 40), //40
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFF6433)),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            ratio_height(context, 8)),
                                        child: Icon(
                                          Icons.timer,
                                          size: ratio_height(context, 25), //25,
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(ratio_height(context, 20)), //20.0
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
                                          ImgUrl,
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
                                    Container(
                                      child: Text(
                                        widget.FoodName,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 29,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: ratio_height(context, 10), // 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Container(
                                height: ratio_height(context, 35), //35,
                                width: ratio_width(context, 110), //110,
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
                                height: ratio_height(context, 35), //35,
                                width: ratio_width(context, 110), //110,
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
                          height: ratio_height(context, 10),
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
                        // Padding(
                        //   padding: EdgeInsets.all(ratio_height(context, 10)),
                        //   child: Text(
                        //     "9 item",
                        //     style: TextStyle(
                        //         fontSize: 24,
                        //         fontFamily: "Poppins",
                        //         fontStyle: FontStyle.italic,
                        //         fontWeight: FontWeight.bold,
                        //         color: Color(0xff752A00)),
                        //   ),
                        // ),
                        SizedBox(
                            height: total_height * 0.48,
                            child: _selectedtab == 1
                                ? ChefRecipeExtractor(
                                    selection: 0,
                                    FoodListName: widget.FoodName,
                                  )

                                // ? Listtile_recipe(
                                //     texttt: 'ingredient',
                                //   )
                                : ChefRecipeExtractor(
                                    selection: 1,
                                    FoodListName: widget.FoodName,
                                  ))
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return SingleChildScrollView(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Container(
                      width: Total_Width(context) * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: ratio_width(context, 10), //20,
                                left: 20,
                                right: 20),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                        height: ratio_height(context, 60), //40
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffFF6433)),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              ratio_height(context, 8)),
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            size:
                                                ratio_height(context, 50), //25,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                  Expanded(child: Container()),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CountdownPage(),
                                          ));
                                    },
                                    child: Container(
                                        height: ratio_height(context, 60), //40
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffFF6433)),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              ratio_height(context, 8)),
                                          child: Icon(
                                            Icons.timer,
                                            size:
                                                ratio_height(context, 50), //25,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                                ratio_height(context, 20)), //20.0
                            child: Stack(
                              children: [
                                Container(
                                  height: Total_Height(context) * 0.5,
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
                                            ImgUrl,
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    height: Total_Height(context) * 0.5,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(33)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0X00FFFFFF),
                                              Color(0xD9FF3D00)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter))),
                                SizedBox(
                                  height: Total_Height(context) * 0.5,
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          widget.FoodName,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 29,
                                              fontFamily: "Poppins",
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ratio_height(context, 10), // 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: ratio_height(context, 60), //35,
                                  width: ratio_width(context, 55), //110,
                                  decoration: BoxDecoration(
                                      color: _selectedtab == 1
                                          ? Color(0xffFF6433)
                                          : Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
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
                                  height: ratio_height(context, 60), //35,
                                  width: ratio_width(context, 55), //110,
                                  decoration: BoxDecoration(
                                      color: _selectedtab == 2
                                          ? Color(0xffFF6433)
                                          : Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
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
                          // SizedBox(
                          //   height: ratio_height(context, 10),
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      width: Total_Width(context) * 0.45,
                      height: Total_Height(context),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(42),
                              topRight: Radius.circular(42))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: total_height * 0.48,
                              child: _selectedtab == 1
                                  ? ChefRecipeExtractor(
                                      selection: 0,
                                      FoodListName: widget.FoodName,
                                    )

                                  // ? Listtile_recipe(
                                  //     texttt: 'ingredient',
                                  //   )
                                  : ChefRecipeExtractor(
                                      selection: 1,
                                      FoodListName: widget.FoodName,
                                    ))
                        ],
                      ),
                    )
                  ]));
            }
          }),
        ),
      ),
    );
  }
}

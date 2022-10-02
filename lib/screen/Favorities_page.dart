// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_from_firebase_public/component/Provider_comp.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../Firebase/Favorities/Display_favorities.dart';
import '../constanst/firstpage_constant.dart';
import '../constanst/secondpage_foodlists_constant.dart';
import '../constanst/constanst.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
class Favorities_Page extends StatefulWidget {
  static String ID = "Favorities_Page";

  @override
  State<Favorities_Page> createState() => _Favorities_PageState();
}

class _Favorities_PageState extends State<Favorities_Page> {
  // int _selectedIndex = 1;
  List secondpage_list = Foodlist_AMERICAN;
  Map secondpage_map_imageurl = AMERICAN_imageeurl;
  List fav_list = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   fav_list = context.watch<Provider_Fav_list>().Fav_list; //[];
  // }

  void get_fav() {
    // await Future.delayed(Duration(seconds: 1));
    // fav_list =
    //     await Favorities_from_Firebase(email: "manandharprashant888@gmail.com");
    // if (fav_list != 0) {
    //   fav_list.removeAt(0);
    //   setState(() {});
    // }
    fav_list = context.watch<Provider_Fav_list>().Fav_list;
  }

  @override
  Widget build(BuildContext context) {
    get_fav();
    print(fav_list.length);
    double total_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: total_height,
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration_backgroundimage,
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(children: [
                SizedBox(
                  height: total_height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFF6433)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          size: 25,
                                          color: Colors.white,
                                        ),
                                      )),
                                )),
                          ),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Hero(
                                tag: "logo",
                                child: Container(
                                  height: ratio_height(context, 100), //100,
                                  width: ratio_width(context, 100), //100,
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
                                          image: AssetImage("image/logo.jpg"))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(ratio_height(context, 20)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: ratio_height(context, 100), //100,
                                  width: MediaQuery.of(context).size.width -
                                      ratio_width(context, 100), //x-100
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x40741F1F),
                                          offset: Offset(4, 7),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(65)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xff8D8988),
                                            Color(0x4DD9D9D9)
                                          ])),
                                  child: Center(
                                    // child: Hero(
                                    //   tag: "text+${widget.FoodType}",
                                    child: Text(
                                      "FAVORITIES",
                                      style: textStyle.copyWith(
                                          fontStyle: FontStyle.normal),
                                    ),
                                    //  ),
                                  )),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  //  Hero(
                                  //   tag: "photo+${widget.FoodType}",
                                  //   child:
                                  Container(
                                height: ratio_height(context, 100), //100,
                                width: ratio_width(context, 100), //100,
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
                                      image: AssetImage("image/mealup.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: total_height * 0.4,
                  // child: ListView(
                  //   padding: const EdgeInsets.all(8.0),
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  child: Display_favorities(
                    Device_Orientation: Portraitt.ID,
                    Email: context.watch<Emaill>().Email,
                    i: 1,
                    height: total_height * 0.4,
                  ),
                  // for (int i = 1; i < fav_list.length; i++)
                  //   Slide_ViewLile_FoodDisplay(
                  //       foodname_Textt: fav_list[i]["Foodlist_s"],
                  //       img_url:
                  //           secondpage_map_imageurl[secondpage_list[i].name],
                  //       OnTap: () {
                  //         print("pressed");
                  //         print("length ${fav_list.length}");
                  //         // Navigator.push(
                  //         //     context,
                  //         //     MaterialPageRoute(
                  //         //         builder: (builder) => Recipe_Page(
                  //         //               Cuisines: Foodtype_name,
                  //         //               foodname_text: secondpage_list[i].name,
                  //         //               Img_URL: secondpage_map_imageurl[
                  //         //                   secondpage_list[i].name],
                  //         //             )));
                  //       }),
                  //],
                  //),
                ),
              ]);
            } else {
              return Row(children: [
                SizedBox(
                  width: Total_Width(context) * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF6433)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  )),
                            )),
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Hero(
                            tag: "logo",
                            child: Container(
                              height: ratio_height(context, 190), //100,
                              width: ratio_width(context, 190), //100,
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
                                      image: AssetImage("image/logo.jpg"))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(ratio_height(context, 20)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: ratio_height(context, 150), //100,
                                  width: MediaQuery.of(context).size.width -
                                      ratio_width(context, 240), //x-100
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x40741F1F),
                                          offset: Offset(4, 7),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(65)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xff8D8988),
                                            Color(0x4DD9D9D9)
                                          ])),
                                  child: Center(
                                    // child: Hero(
                                    //   tag: "text+${widget.FoodType}",
                                    child: Text(
                                      "FAVORITIES",
                                      style: textStyle.copyWith(
                                          fontStyle: FontStyle.normal),
                                    ),
                                    //  ),
                                  )),
                            ),
                            Container(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                      //  Hero(
                                      //   tag: "photo+${widget.FoodType}",
                                      //   child:
                                      Container(
                                    height: ratio_height(context, 150), //100,
                                    width: ratio_height(context, 150), //100,
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
                                          image: AssetImage("image/mealup.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: Total_Width(context) * 0.55,
                  // child: ListView(
                  //   padding: const EdgeInsets.all(8.0),
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  child: Display_favorities(
                    Device_Orientation: Landscapee.ID,
                    Email: context.watch<Emaill>().Email,
                    i: 1,
                    height: total_height * 0.95,
                  ),
                  // for (int i = 1; i < fav_list.length; i++)
                  //   Slide_ViewLile_FoodDisplay(
                  //       foodname_Textt: fav_list[i]["Foodlist_s"],
                  //       img_url:
                  //           secondpage_map_imageurl[secondpage_list[i].name],
                  //       OnTap: () {
                  //         print("pressed");
                  //         print("length ${fav_list.length}");
                  //         // Navigator.push(
                  //         //     context,
                  //         //     MaterialPageRoute(
                  //         //         builder: (builder) => Recipe_Page(
                  //         //               Cuisines: Foodtype_name,
                  //         //               foodname_text: secondpage_list[i].name,
                  //         //               Img_URL: secondpage_map_imageurl[
                  //         //                   secondpage_list[i].name],
                  //         //             )));
                  //       }),
                  //],
                  //),
                ),
              ]);
            }
          }),
        ),
      ),
    );
  }
}

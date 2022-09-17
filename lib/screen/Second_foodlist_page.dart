// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_from_firebase_public/constanst/foodname.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:line_icons/line_icons.dart';
import '../constanst/secondpage_foodlists_constant.dart';
import '../constanst/constanst.dart';
import '../constanst/firstpage_constant.dart';

import 'First_foodtype_page.dart';
import 'Recipee_page.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

class Secondpage_food extends StatefulWidget {
  final String FoodType;
  static String ID = "second foodlist";
  Secondpage_food({required this.FoodType});

  @override
  State<Secondpage_food> createState() => _Secondpage_foodState();
}

class _Secondpage_foodState extends State<Secondpage_food> {
  int _selectedIndex = 1;
  List secondpage_list = Foodlist_AMERICAN;
  Map secondpage_map_imageurl = AMERICAN_imageeurl;

  @override
  Widget build(BuildContext context) {
    double total_height = MediaQuery.of(context).size.height;
    String Foodtype_name = widget.FoodType;
    if (Foodtype_name == foodtype_name_list.nAmerican) {
      secondpage_list = Foodlist_AMERICAN;
      secondpage_map_imageurl = AMERICAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nBritish) {
      secondpage_list = Foodlist_BRITISH;
      secondpage_map_imageurl = BRITISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nCaribbean) {
      secondpage_list = Foodlist_CARIBBEAN;
      secondpage_map_imageurl = CARIBBEAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nChinese) {
      secondpage_list = Foodlist_CHINESE;
      secondpage_map_imageurl = CHINESE_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nFrench) {
      secondpage_list = Foodlist_FRENCH;
      secondpage_map_imageurl = FRENCH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nGreek) {
      secondpage_list = Foodlist_GREEK;
      secondpage_map_imageurl = GREEK_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nIndian) {
      secondpage_list = Foodlist_INDIAN;
      secondpage_map_imageurl = INDIAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nItalian) {
      secondpage_list = Foodlist_ITALIAN;
      secondpage_map_imageurl = ITALIAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nJapnese) {
      secondpage_list = Foodlist_JAPANESES;
      secondpage_map_imageurl = JAPANESES_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMediterranean) {
      secondpage_list = Foodlist_MEDITERRANEAN;
      secondpage_map_imageurl = MEDITERRANEAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMexican) {
      secondpage_list = Foodlist_MEXICAN;
      secondpage_map_imageurl = MEXICAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMorccan) {
      secondpage_list = Foodlist_MOROCCO;
      secondpage_map_imageurl = MOROCCO_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMiddle_Eastern) {
      secondpage_list = Foodlist_MIDDLEEAST;
      secondpage_map_imageurl = MIDDLEEAST_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nSpanish) {
      secondpage_list = Foodlist_SPANSIH;
      secondpage_map_imageurl = SPANISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nThai) {
      secondpage_list = Foodlist_THAI;
      secondpage_map_imageurl = THAI_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nTurkish) {
      secondpage_list = Foodlist_TURKISH;
      secondpage_map_imageurl = TURKISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nVietnamese) {
      secondpage_list = Foodlist_VIETNAMESE;
      secondpage_map_imageurl = VIETNAMESE_imageeurl;
    }

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Firstpage_food(),
                        ));
                  },
                ),
                // GButton(
                //   icon: LineIcons.heart,
                //   text: 'Likes',
                // ),
                // GButton(
                //   icon: LineIcons.search,
                //   text: 'Search',
                // ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => Recipe_page(),
                  //       ));
                  // },
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: Container(
        height: total_height,
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration_backgroundimage,
        child: SafeArea(
          child: Column(children: [
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
                                ))),
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
                    padding: const EdgeInsets.all(20.0),
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
                                  widget.FoodType,
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
                                    image: CachedNetworkImageProvider(
                                      imageeurl[Foodtype_name] ?? '',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          //),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: total_height * 0.45,
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < secondpage_list.length; i++)
                    slide_view(
                        foodname_Textt: secondpage_list[i].name,
                        img_url:
                            secondpage_map_imageurl[secondpage_list[i].name],
                        OnTap: () {
                          print("pressed");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Recipe_page(
                                        Cuisines: Foodtype_name,
                                        foodname_text: secondpage_list[i].name,
                                        Img_URL: secondpage_map_imageurl[
                                            secondpage_list[i].name],
                                      )));
                        }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

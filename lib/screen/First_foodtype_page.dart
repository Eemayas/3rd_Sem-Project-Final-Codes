// ignore_for_file: sized_box_for_whitespace, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_from_firebase_public/screen/Drawer.dart';
import 'package:line_icons/line_icons.dart';
import '../constanst/constanst.dart';
import '../constanst/firstpage_constant.dart';
import 'Second_foodlist_page.dart';
import 'profile_page.dart';

class Firstpage_food extends StatefulWidget {
  static String ID = "fooftype";
  @override
  State<Firstpage_food> createState() => _Firstpage_foodState();
}

class _Firstpage_foodState extends State<Firstpage_food> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: New_drawer_page(),
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
              iconSize: ratio_height(context, 24), //24,
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
                    Navigator.pushNamed(context, Firstpage_food.ID);
                  },
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => profile_page(),
                        ));
                  },
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration_backgroundimage,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: totalheight * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Builder(
                            builder: (context) => GestureDetector(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 25, left: 25),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Icon(Icons.menu_sharp, size: 30)),
                                ),
                              ),
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                          ),
                          Center(
                            child: Container(
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
                      Text("What do you\nwant\nto cook today?",
                          textAlign: TextAlign.center,
                          style:
                              textStyle.copyWith(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  height: totalheight * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListView(
                      padding: const EdgeInsets.all(8.0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < foodtype_list.length; i++)
                          slide_view(
                              foodname_Textt: foodtype_list[i].name,
                              img_url: imageeurl[foodtype_list[i].name] ?? "",
                              OnTap: () {
                                print("pressed");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (builder) => Secondpage_food(
                                        FoodType: foodtype_list[i].name,
                                      ),
                                    ));
                              }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class slide_view extends StatelessWidget {
  final String foodname_Textt;
  final String img_url;
  final Function() OnTap;
  slide_view(
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

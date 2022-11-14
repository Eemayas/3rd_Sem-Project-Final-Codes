// ignore_for_file: sized_box_for_whitespace, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:image_from_firebase_public/screen/Drawer_Page.dart';
import 'package:provider/provider.dart';

import '../component/Provider_comp.dart';
import '../component/Slide_ViewLile_FoodDisplay.dart';
import '../constanst/constanst.dart';
import '../constanst/firstpage_constant.dart';
import 'Secondpage_Food_Page.dart';

class Firstpage_Food_Page extends StatelessWidget {
  static String ID = "fooftype";
  @override
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    context
        .read<Provider_Fav_list>()
        .provide_get_favlist(context.watch<Emaill>().Email);
    double totalheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer_Page(),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration_backgroundimage,
          child: SafeArea(
            child: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                if (orientation == Orientation.portrait) {
                  return Column(
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
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 25),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Icon(Icons.menu_sharp,
                                                size: 30)),
                                      ),
                                    ),
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: Hero(
                                      tag: "logo",
                                      child: Container(
                                        height:
                                            ratio_height(context, 100), //100,
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
                                                image: AssetImage(
                                                    "image/logo.jpg"))),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text("What do you\nwant\nto cook today?",
                                textAlign: TextAlign.center,
                                style: textStyle.copyWith(
                                    fontWeight: FontWeight.bold)),
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
                                Slide_ViewLile_FoodDisplay(
                                    isChefPage: false,
                                    Device_Orientation: Portraitt.ID,
                                    foodname_Textt: foodtype_list[i].name,
                                    img_url:
                                        imageeurl[foodtype_list[i].name] ?? "",
                                    OnTap: () {
                                      print("pressed");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (builder) =>
                                                Secondpage_Food_Page(
                                              FoodType: foodtype_list[i].name,
                                            ),
                                          ));
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: Total_Width(context) * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Builder(
                                builder: (context) => GestureDetector(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25, left: 25),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child:
                                              Icon(Icons.menu_sharp, size: 30)),
                                    ),
                                  ),
                                  onTap: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                ),
                              ),
                              Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Hero(
                                    tag: "logo",
                                    child: Container(
                                      height: ratio_height(context, 150), //100,
                                      width: ratio_width(context, 150), //100,
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
                                              image: AssetImage(
                                                  "image/logo.jpg"))),
                                    ),
                                  ),
                                ),
                              ),
                              Text("What do you\nwant\nto cook today?",
                                  textAlign: TextAlign.center,
                                  style: textStyle.copyWith(
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Container(
                          width: Total_Width(context) * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ListView(
                              padding: const EdgeInsets.all(8.0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (int i = 0; i < foodtype_list.length; i++)
                                  Slide_ViewLile_FoodDisplay(
                                      isChefPage: false,
                                      Device_Orientation: Landscapee.ID,
                                      foodname_Textt: foodtype_list[i].name,
                                      img_url:
                                          imageeurl[foodtype_list[i].name] ??
                                              "",
                                      OnTap: () {
                                        print("pressed");
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (builder) =>
                                                  Secondpage_Food_Page(
                                                FoodType: foodtype_list[i].name,
                                              ),
                                            ));
                                      }),
                              ],
                            ),
                          ),
                        ),
                      ]);
                  // return Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       height: totalheight * 0.4,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           Row(
                  //             children: [

                  //
                  //

                }
              },
            ),
          )),
    );
  }
}

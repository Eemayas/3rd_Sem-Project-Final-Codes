import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Firebase/Chef/DisplayChefList.dart';
import '../constanst/constanst.dart';

class First_FromChefPage extends StatelessWidget {
  const First_FromChefPage({Key? key}) : super(key: key);
  static String ID = "chef";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Total_Height(context),
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration_backgroundimage,
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(children: [
                SizedBox(
                  height: Total_Height(context) * 0.4,
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
                                      "From Chef",
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
                                        image: AssetImage("image/chef.png"),
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
                  height: Total_Height(context) * 0.4,
                  child: Display_ChefFoodList(
                    Device_Orientation: Portraitt.ID,
                    i: 1,
                    height: Total_Height(context) * 0.4,
                  ),
                ),
              ]);
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
                                          image: AssetImage("image/logo.jpg"))),
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
                    SizedBox(
                      width: Total_Width(context) * 0.55,
                      child: Display_ChefFoodList(
                        Device_Orientation: Landscapee.ID,
                        i: 1,
                        height: Total_Height(context) * 0.95,
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
          }),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/screen/First_FromChef_Page.dart';
import '../constanst/constanst.dart';
import '../constanst/Tile_for_detail.dart';
import 'Pin_Input_Page.dart';
import 'Profile_Page.dart';
import 'Starting_Page1.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:image_from_firebase_public/screen/oldpages/O_profile_page.dart';

import 'Firstpage_Food_Page.dart';

class Drawer_Page extends StatelessWidget {
  const Drawer_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/background2.png"),
                  fit: BoxFit.fill)),
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: total_height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("image/Drawerbackground.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Container(
                        width: ratio_height(context, 120), //120
                        height: ratio_height(context, 120), //120,
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/mealup.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      GradientText(
                        'Meal UP',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.italic,
                          fontSize: 22,
                        ),
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffCC540D),
                        ],
                      ),
                      GradientText(
                        'mealup@gmail.com',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffCC540D),
                        ],
                      ),
                    ],
                  ),
                ),
                Tile_for_detail(
                  Device_Orientation: Portraitt.ID,
                  Text_list: "Profile",
                  Iccon: Icon(Icons.person),
                  onpressed: () {
                    Navigator.pushNamed(context, Profile_Page.ID);
                  },
                ),
                Tile_for_detail(
                  Device_Orientation: Portraitt.ID,
                  Text_list: "Cuisines",
                  Iccon: Icon(Icons.restaurant),
                  onpressed: () {
                    Navigator.pushNamed(context, Firstpage_Food_Page.ID);
                  },
                ),
                Tile_for_detail(
                    Device_Orientation: Portraitt.ID,
                    Text_list: "From Chef",
                    Iccon: Icon(Icons.restaurant),
                    onpressed: () {
                      Navigator.pushNamed(context, First_FromChefPage.ID);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (builder) => Pin_Input_Page()));

                      //Navigator.pushNamed(context, "datata");
                    }),
                Tile_for_detail(
                    Device_Orientation: Portraitt.ID,
                    Text_list: "Info",
                    onpressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AboutDialog(
                                applicationIcon: Icon(Icons.restaurant),
                                applicationName: "Meal Up",
                                applicationVersion: "Version 1.0.0",
                                children: [
                                  Center(
                                    child: Text(
                                        "Developed By:\nJayash Bhattari\n Saugat Khatri\nPrashant Manandhar\nPrajwol Timalsina"),
                                  )
                                ],
                              ));
                    },
                    Iccon: Icon(Icons.info_outline)),
                Expanded(child: Container()),
                Tile_for_detail(
                    Device_Orientation: Portraitt.ID,
                    Text_list: "Data Entry(Developer Only)",
                    Iccon: Icon(Icons.devices_rounded),
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Pin_Input_Page()));

                      //Navigator.pushNamed(context, "datata");
                    }),
                Tile_for_detail(
                    Device_Orientation: Portraitt.ID,
                    Text_list: "Logout",
                    Iccon: Icon(Icons.exit_to_app),
                    onpressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.popUntil(
                          context, ModalRoute.withName(Starting_Page_1.ID));
                      Navigator.pushNamed(context, Starting_Page_1.ID);
                    }),
              ]);
            } else {
              return ListView(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: Total_Width(context) * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("image/Drawerbackground.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Container(
                        width: ratio_height(context, 150), //120
                        height: ratio_height(context, 150), //120,
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/mealup.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      GradientText(
                        'Meal UP',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.italic,
                          fontSize: 22,
                        ),
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffCC540D),
                        ],
                      ),
                      GradientText(
                        'mealup@gmail.com',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffCC540D),
                        ],
                      ),
                    ],
                  ),
                ),
                Tile_for_detail(
                  Device_Orientation: Landscapee.ID,
                  Text_list: "Profile",
                  Iccon: Icon(Icons.person),
                  onpressed: () {
                    Navigator.pushNamed(context, Profile_Page.ID);
                  },
                ),
                Tile_for_detail(
                  Device_Orientation: Landscapee.ID,
                  Text_list: "Cuisines",
                  Iccon: Icon(Icons.restaurant),
                  onpressed: () {
                    Navigator.pushNamed(context, Firstpage_Food_Page.ID);
                  },
                ),
                Tile_for_detail(
                    Device_Orientation: Landscapee.ID,
                    Text_list: "From Chef",
                    Iccon: Icon(Icons.restaurant),
                    onpressed: () {
                      Navigator.pushNamed(context, First_FromChefPage.ID);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (builder) => Pin_Input_Page()));

                      //Navigator.pushNamed(context, "datata");
                    }),
                Tile_for_detail(
                    Device_Orientation: Landscapee.ID,
                    Text_list: "Info",
                    onpressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AboutDialog(
                                applicationIcon: Icon(Icons.restaurant),
                                applicationName: "Meal Up",
                                applicationVersion: "Version 1.0.0",
                                children: [
                                  Center(
                                    child: Text(
                                        "Developed By:\nJayash Bhattari\n Saugat Khatri\nPrashant Manandhar\nPrajwol Timalsina"),
                                  )
                                ],
                              ));
                    },
                    Iccon: Icon(Icons.info_outline)),
                Expanded(child: Container()),
                Tile_for_detail(
                    Device_Orientation: Landscapee.ID,
                    Text_list: "Data Entry(Developer Only)",
                    Iccon: Icon(Icons.devices_rounded),
                    onpressed: () {
                      Navigator.pushNamed(context, "datata");
                    }),
                Tile_for_detail(
                    Device_Orientation: Landscapee.ID,
                    Text_list: "Logout",
                    Iccon: Icon(Icons.exit_to_app),
                    onpressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.popUntil(
                          context, ModalRoute.withName(Starting_Page_1.ID));
                      Navigator.pushNamed(context, Starting_Page_1.ID);
                    }),
              ]);
            }
          }),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/Firebase/Favorities/Remove_from_favorities.dart';
import 'package:image_from_firebase_public/dummy/favorities_try.dart';
import 'package:provider/provider.dart';

import '../Firebase/Favorities/Check_Favorities.dart';
import '../Firebase/Favorities/Favorites_to_Firebase.dart';
import '../Firebase/Favorities/Favorities_from_Firebase.dart';
import '../Firebase/New_Firebase_extractoe.dart';
import '../component/Provider_comp.dart';
import '../constanst/constanst.dart';
import 'Timer_Page.dart';

class Recipe_Page extends StatefulWidget {
  final String Img_URL;
  final String foodname_text;
  final String Cuisines;
  Recipe_Page(
      {required this.Img_URL,
      required this.foodname_text,
      required this.Cuisines});

  @override
  State<Recipe_Page> createState() => _Recipe_PageState();
}

class _Recipe_PageState extends State<Recipe_Page> {
  int _selectedtab = 1;
  List data_favorities_recipe = [];
  bool isfav = false;
  int loop = 0;
  // String Email = 'manandharprashant888@gmail.com'; //"mealup@gmail.com";
  // void get_current_User() {
  //   FirebaseAuth.instance.userChanges().listen((User? user) async {
  //     if (user == null) {
  //       print('User is currently signed out!');
  //       // showAlertDialog("User is currently signed out!");
  //     } else {
  //       print('User is signed in!');
  //       var currentUser = FirebaseAuth.instance.currentUser!.email;

  //       if (currentUser != null) {
  //         print("email:   ${currentUser}");
  //       }
  //       Email = currentUser!;
  //     }
  //   });
  // }

  void check(String Email) async {
    if (loop == 0)
      isfav = await Check_Favorities(
          Foodlist_s: widget.foodname_text, email: Email);
    setState(() {
      loop++;
    });
  }

  //@override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   context
  //       .read<Provider_Fav_list>()
  //       .provide_get_favlist(context.watch<Emaill>().Email);
  // }

  @override
  Widget build(BuildContext context) {
    String Email = context.watch<Emaill>().Email;
    double recipepage_photoheight = ratio_height(context, 200); //200;
    String foodname_text = widget.foodname_text;
    String Img_URL = widget.Img_URL;
    String Cuisines = widget.Cuisines;
    double total_height = MediaQuery.of(context).size.height;

    //get_current_User();
    check(Email);
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
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
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
                                GestureDetector(
                                  onTap: () async {
                                    print("Pressed");
                                    print(await Check_Favorities(
                                        Foodlist_s: foodname_text,
                                        email: Email));
                                    if (await Check_Favorities(
                                        Foodlist_s: foodname_text,
                                        email: Email)) {
                                      isfav = false;
                                      Remove_from_favorities(
                                          email: Email,
                                          Foodtype_f: Cuisines,
                                          Foodlist_s: foodname_text,
                                          ImgUrl: Img_URL);
                                    } else {
                                      isfav = true;

                                      Favorities__Firebase_entry(
                                          ImgUrl: Img_URL,
                                          Foodlist_s_name: foodname_text,
                                          Foodtype_f_name: Cuisines,
                                          email: Email);
                                    }
                                    // retrivedata();
                                    // retrivedata1();
                                    //searchlist();
                                    //delete();
                                    context.read<Provider_Fav_list>().Fav_list;
                                    setState(() {});
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
                                          isfav
                                              ? Icons.favorite
                                              : Icons.favorite_border,
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
                                    Container(
                                      child: Text(
                                        foodname_text,
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                          size: ratio_height(context, 50), //25,
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
                                      height: ratio_height(context, 60), //40
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFF6433)),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            ratio_height(context, 8)),
                                        child: Icon(
                                          Icons.timer,
                                          size: ratio_height(context, 50), //25,
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    print(await Check_Favorities(
                                        Foodlist_s: foodname_text,
                                        email: Email));
                                    if (await Check_Favorities(
                                        Foodlist_s: foodname_text,
                                        email: Email)) {
                                      isfav = false;
                                      Remove_from_favorities(
                                          email: Email,
                                          Foodtype_f: Cuisines,
                                          Foodlist_s: foodname_text,
                                          ImgUrl: Img_URL);
                                    } else {
                                      isfav = true;

                                      Favorities__Firebase_entry(
                                          ImgUrl: Img_URL,
                                          Foodlist_s_name: foodname_text,
                                          Foodtype_f_name: Cuisines,
                                          email: Email);
                                    }
                                    // retrivedata();
                                    // retrivedata1();
                                    //searchlist();
                                    //delete();
                                    context.read<Provider_Fav_list>().Fav_list;
                                    setState(() {});
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
                                          isfav
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: ratio_height(context, 50), //25,
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
                                          Img_URL,
                                        ),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                  height: Total_Height(context) * 0.5,
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
                                height: Total_Height(context) * 0.5,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text(
                                        foodname_text,
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
                                height: ratio_height(context, 60), //35,
                                width: ratio_width(context, 55), //110,
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
                        // Text("data")
                        SizedBox(
                            height: Total_Height(context),
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
            );
          }
        }),
      )),
    );
  }
}

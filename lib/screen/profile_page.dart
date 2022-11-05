import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/Initilization_Favorities.dart';
import 'package:provider/provider.dart';

import '../Firebase/Detail_from_Firebase.dart';
import '../component/Provider_comp.dart';
import '../constanst/constanst.dart';

class Profile_Page extends StatelessWidget {
  static String ID = "Profile_page";
  String Email = "mealup@gmail.com";

  Future<void> get_current_User() async {
    FirebaseAuth.instance.userChanges().listen((User? user) async {
      if (user == null) {
        print('User is currently signed out!');
        // showAlertDialog("User is currently signed out!");
      } else {
        print('User is signed in!1');
        var currentUser = FirebaseAuth.instance.currentUser!.email;

        if (currentUser != null) {
          print("email:   ${currentUser}");
        }
        Email = await currentUser!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    get_current_User();
    double total_height = MediaQuery.of(context).size.height;
    double total_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: total_height,
          width: total_width,
          decoration: boxDecoration_backgroundimage,
          child: OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: total_height * 3 * 0.178125 / 4,
                            ),
                            Container(
                              height: total_height / 2,
                              width: total_width,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(4, 7),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(41.25)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "image/background2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Deatil_extractor(
                                Device_Orientation: Portraitt.ID,
                                email: context.watch<Emaill>().Email, //Email,
                              ),
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   children: [
                              //     SizedBox(height: total_height * 0.178125 / 4),
                              //     // Tile_for_detail(
                              //     //     Text_list: "MEAL Up",
                              //     //     Iccon: Icon(Icons.person)),
                              //     // Tile_for_detail(
                              //     //     Text_list: "+9779800000000",
                              //     //     Iccon: Icon(Icons.phone)),
                              //     // Tile_for_detail(
                              //     //     Text_list: "mealuo@gmail.com",
                              //     //     Iccon: Icon(Icons.email)),
                              //     // Tile_for_detail(
                              //     //     Text_list: "DHULIKEHEL",
                              //     //     Iccon: Icon(Icons.location_on)),
                              //     Deatil_extractor(),
                              //     Padding(
                              //       padding:
                              //           const EdgeInsets.symmetric(horizontal: 20),
                              //       child: Image(image: AssetImage("image/2.png")),
                              //     )
                              //   ],
                              // ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: total_height * 0.178125,
                            width: total_height * 0.178125,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 7),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ],
                              color: Color(0xffffffff),
                            ),
                            child: Icon(
                              Icons.person_outline,
                              size: total_height * 0.178125,
                              color: Color(0xffFF541E), //
                            ),
                          ),
                          Container(
                            height: total_height * 0.178125,
                            width: total_height * 0.178125,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0x4DFF541E),
                            ),
                            child: Icon(
                              Icons.person_outline,
                              size: total_height * 0.178125,
                              color: Color(0xffFF541E), //
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: total_width * 3 * 0.178125 / 4,
                              ),
                              Container(
                                height: total_width / 2,
                                width: total_height,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(4, 7),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                    )
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(41.25)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "image/background2.png",
                                      ),
                                      fit: BoxFit.fill),
                                ),
                                child: Deatil_extractor(
                                  Device_Orientation: Landscapee.ID,
                                  email: context.watch<Emaill>().Email, //Email,
                                ),
                                // child: Column(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     SizedBox(height: total_height * 0.178125 / 4),
                                //     // Tile_for_detail(
                                //     //     Text_list: "MEAL Up",
                                //     //     Iccon: Icon(Icons.person)),
                                //     // Tile_for_detail(
                                //     //     Text_list: "+9779800000000",
                                //     //     Iccon: Icon(Icons.phone)),
                                //     // Tile_for_detail(
                                //     //     Text_list: "mealuo@gmail.com",
                                //     //     Iccon: Icon(Icons.email)),
                                //     // Tile_for_detail(
                                //     //     Text_list: "DHULIKEHEL",
                                //     //     Iccon: Icon(Icons.location_on)),
                                //     Deatil_extractor(),
                                //     Padding(
                                //       padding:
                                //           const EdgeInsets.symmetric(horizontal: 20),
                                //       child: Image(image: AssetImage("image/2.png")),
                                //     )
                                //   ],
                                // ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: total_width * 0.178125,
                              width: total_width * 0.178125,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(4, 7),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                                color: Color(0xffffffff),
                              ),
                              // child: Icon(
                              //   Icons.person_outline,
                              //   size: total_height * 0.178125,
                              //   color: Color(0xffFF541E), //
                              // ),
                            ),
                            Container(
                              height: total_width * 0.178125,
                              width: total_width * 0.178125,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0x4DFF541E),
                              ),
                              child: Icon(
                                Icons.person_outline,
                                size: total_height * 0.178125,
                                color: Color(0xffFF541E), //
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
//  email:   User(displayName: null, email: manandharprashant888@gmail.com, emailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2022-09-21 12:28:58.763Z, lastSignInTime: 2022-09-21 12:28:58.763Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: manandharprashant888@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: manandharprashant888@gmail.com)], refreshToken: , tenantId: null, uid: nPOC0WdiQRNReUvwfmSxdBGGQ6z1)

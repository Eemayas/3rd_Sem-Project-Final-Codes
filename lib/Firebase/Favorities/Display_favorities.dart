import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_from_firebase_public/Firebase/Favorities/Favorities_from_Firebase.dart';
import 'package:image_from_firebase_public/component/Provider_comp.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:provider/provider.dart';

import '../../component/Slide_ViewLile_FoodDisplay.dart';
import '../../screen/Recipee_Page.dart';

class Display_favorities extends StatefulWidget {
  final String Device_Orientation;
  final String Email;
  final int i;
  final double height;

  Display_favorities(
      {required this.Email,
      required this.i,
      required this.height,
      required this.Device_Orientation});

  @override
  State<Display_favorities> createState() => _Display_favoritiesState();
}

class _Display_favoritiesState extends State<Display_favorities> {
  int length = 0;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: Favorities_from_Firebase(email: widget.Email),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic>? yourResponseDataFromAsync = snapshot.data;
          print(context.watch<Emaill>().Email);
          print(yourResponseDataFromAsync?.length);
          length = yourResponseDataFromAsync?.length ?? 0;
          //return Text(yourResponseDataFromAsync![1]['Foodlist_s']);
          return SizedBox(
            height: widget.height,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 1; i < length; i++)
                  Slide_ViewLile_FoodDisplay(
                      isChefPage: false,
                      Device_Orientation: widget.Device_Orientation,
                      foodname_Textt: yourResponseDataFromAsync![i]
                          ["Foodlist_s"],
                      img_url: yourResponseDataFromAsync[i]["ImgUrl"],
                      OnTap: () {
                        print("pressed");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Recipe_Page(
                                      Cuisines: yourResponseDataFromAsync[i]
                                          ["Foodtype_f"],
                                      foodname_text:
                                          yourResponseDataFromAsync[i]
                                              ["Foodlist_s"],
                                      Img_URL: yourResponseDataFromAsync[i]
                                          ["ImgUrl"],
                                    )));
                      }),
              ],
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}

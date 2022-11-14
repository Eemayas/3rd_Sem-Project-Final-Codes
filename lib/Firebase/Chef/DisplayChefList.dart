import 'package:flutter/material.dart';

import '../../component/Slide_ViewLile_FoodDisplay.dart';
import '../../screen/RecipeFromChef_Page.dart';
import '../../screen/Recipee_Page.dart';
import 'FoodlistFromFirebase.dart';

class Display_ChefFoodList extends StatefulWidget {
  final String Device_Orientation;

  final int i;
  final double height;

  Display_ChefFoodList(
      {required this.i,
      required this.height,
      required this.Device_Orientation});

  @override
  State<Display_ChefFoodList> createState() => _Display_favoritiesState();
}

class _Display_favoritiesState extends State<Display_ChefFoodList> {
  int length = 0;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: FoodlistChef_from_Firebase(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic>? yourResponseDataFromAsync = snapshot.data;
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
                      isChefPage: true,
                      Device_Orientation: widget.Device_Orientation,
                      foodname_Textt: yourResponseDataFromAsync![i]["Name"],
                      img_url: "image/chef.png",
                      //yourResponseDataFromAsync[i]["ImgUrl"],
                      OnTap: () {
                        print("pressed");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Recipe_FomChef(
                                      FoodName: yourResponseDataFromAsync[i]
                                          ["Name"],
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

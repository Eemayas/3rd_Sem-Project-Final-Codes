import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../constanst/secondpage_foodlists_constant.dart';

class foodlist extends StatelessWidget {
  static String ID = 'food_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('foodlist'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_CHINESE.length; i++)
              format(
                  photoname: Foodlist_CHINESE[i].imagePath,
                  name: Foodlist_CHINESE[i].title),
          ],
        )),
      ),
    );
  }
}

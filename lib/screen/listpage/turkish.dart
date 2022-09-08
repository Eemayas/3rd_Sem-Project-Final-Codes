import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class turkish extends StatelessWidget {
  static String ID = 'turkish';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('turkish'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_TURKISH.length; i++)
              format(
                  photoname: Foodlist_TURKISH[i].imagePath,
                  name: Foodlist_TURKISH[i].title),
          ],
        )),
      ),
    );
  }
}

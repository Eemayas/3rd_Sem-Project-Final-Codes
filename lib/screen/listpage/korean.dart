import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class korean extends StatelessWidget {
  static String ID = 'korean';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('korean'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_KOREAN.length; i++)
              format(
                  photoname: Foodlist_KOREAN[i].imagePath,
                  name: Foodlist_KOREAN[i].title),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class thai extends StatelessWidget {
  static String ID = 'thai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('thai'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_THAI.length; i++)
              format(
                  photoname: Foodlist_THAI[i].imagePath,
                  name: Foodlist_THAI[i].title),
          ],
        )),
      ),
    );
  }
}

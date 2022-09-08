import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class french extends StatelessWidget {
  static String ID = 'french';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FRENCH'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_FRENCH.length; i++)
              format(
                  photoname: Foodlist_FRENCH[i].imagePath,
                  name: Foodlist_FRENCH[i].title),
          ],
        )),
      ),
    );
  }
}

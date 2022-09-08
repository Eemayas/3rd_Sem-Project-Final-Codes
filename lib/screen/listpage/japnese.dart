import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class japanese extends StatelessWidget {
  static String ID = 'japanese';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('japnese'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_JAPANESES.length; i++)
              format(
                  photoname: Foodlist_JAPANESES[i].imagePath,
                  name: Foodlist_JAPANESES[i].title),
          ],
        )),
      ),
    );
  }
}

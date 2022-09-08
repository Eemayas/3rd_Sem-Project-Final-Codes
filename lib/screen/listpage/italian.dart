import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class italian extends StatelessWidget {
  static String ID = 'italian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('italian'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_ITALIAN.length; i++)
              format(
                  photoname: Foodlist_ITALIAN[i].imagePath,
                  name: Foodlist_ITALIAN[i].title),
          ],
        )),
      ),
    );
  }
}

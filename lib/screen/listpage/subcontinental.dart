import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class subcontiental extends StatelessWidget {
  static String ID = 'subcontientals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('subcontiental'),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < Foodlist_SUBCONTINENTAL.length; i++)
              format(
                  photoname: Foodlist_SUBCONTINENTAL[i].imagePath,
                  name: Foodlist_SUBCONTINENTAL[i].title),
          ],
        )),
      ),
    );
  }
}

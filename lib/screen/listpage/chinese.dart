import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/format.dart';
import 'package:image_from_firebase_public/screen/recipee/try.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

class chinese extends StatelessWidget {
  static String ID = 'chinese';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Chinese'),
        // ),
        // body: SafeArea(
        //   child: Center(
        //       child: ListView(
        //     // scrollDirection: Axis.horizontal,
        //     children: [
        //       for (int i = 0; i < Foodlist_CHINESE.length; i++)
        //         format(
        //             photoname: CHINESE_imageeurl[Foodlist_CHINESE[i].name],
        //             name: Foodlist_CHINESE[i].name,
        //             nextpage: tryy.ID),
        //     ],
        //   )),
        // ),
        );
  }
}

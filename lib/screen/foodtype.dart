import 'package:image_from_firebase_public/component/photorecevier.dart';
import 'package:image_from_firebase_public/screen/listpage/chinese.dart';
import 'package:image_from_firebase_public/screen/listpage/italian.dart';
import 'package:image_from_firebase_public/screen/listpage/japnese.dart';
import 'package:image_from_firebase_public/screen/listpage/korean.dart';
import 'package:image_from_firebase_public/screen/listpage/subcontinental.dart';
import 'package:image_from_firebase_public/screen/listpage/thai.dart';
import 'package:image_from_firebase_public/screen/listpage/turkish.dart';
import '../component/format.dart';
import 'foodlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodtype extends StatelessWidget {
  static String ID = 'food_type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'foodtypes',
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'slidebar.ID');
          },
          child: Icon(Icons.menu),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView // listview which alow to scroll down
            (children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              format(
                photoname: 'Foodtype/chinese.jpg',
                name: "CHINESE",
                nextpage: 'chinese.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/french.jpeg',
                name: "FRENCH",
                nextpage: 'french.ID',
              ), //calling the function to print he format
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/italian.jpg',
                name: "ITALIAN",
                nextpage: 'italian.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/japanese.jfif',
                name: "JAPANESE",
                nextpage: 'japanese.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/korean.jpg',
                name: "KOREAN",
                nextpage: 'korean.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/subcontinental.jpg',
                name: "SUBCONTINENTAL",
                nextpage: 'subcontiental.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/thai.jpg',
                name: "THAI",
                nextpage: 'thai.ID',
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/turkish.jpg',
                name: "TURKISH",
                nextpage: "turkish.ID",
              ),
            ],
          ),
        ]),
      )),
    );
  }
}



// return Scaffold(
//   appBar: AppBar(
//     title: Text(
//       'foodtypes',
//     ),
//     leading: GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, 'slidebar.ID');
//       },
//       child: Icon(Icons.menu),
//     ),
//   ),
//   body: SafeArea(
//     child: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'foodtype page',
//             style: TextStyle(fontSize: 30),
//           ),
//           TextButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, "foodlist.ID");
//               },
//               child: Text("nextpage"))
//         ],
//       ),
//     ),
//   ),
// );

//  child: Center(
//         child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
//           Container(
//             color: Colors.black87,
//           ),
//           CircleAvatar(maxRadius: 150.0, backgroundColor: Colors.white),
//         ]),
//       )

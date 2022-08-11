import 'package:image_from_firebase_public/component/photorecevier.dart';
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
                photoname: 'Foodtype/italian.jpg',
                name: "ITTALIAN",
              ),
              SizedBox(
                height: 40,
              ),
              format(
                photoname: 'Foodtype/french.jpeg',
                name: "FRENCH",
              ), //calling the function to print he format
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

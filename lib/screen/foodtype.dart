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
              format(),
              SizedBox(
                height: 40,
              ),
              format(), //calling the function to print he format
            ],
          ),
        ]),
      )),
    );
  }
}

class format extends StatelessWidget {
  const format({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 350,
          color: Colors.white38,
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 100,
              color: Colors.grey,
            ),
          ],
        ),
        // Container(
        //   height: 200,
        //   color: Colors.white,
        // ),
        // Positioned(
        //   child:
        Container(
          //alignment: Alignment.center,
          height: 250,
          width: 250,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                // BoxShadow(
                //   color: Colors.white,
                //   offset: const Offset(0.0, 0.0),
                //   blurRadius: 00.0,
                //   spreadRadius: 0.0,
                // )
              ]),
        ),
        // ),
        Column(
          children: [
            SizedBox(
              height: 275,
            ),
            TextButton(
                onPressed: () {
                  //navigate to the next page
                },
                child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                    child: Icon(Icons.arrow_forward))),
          ],
        ),
      ],
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

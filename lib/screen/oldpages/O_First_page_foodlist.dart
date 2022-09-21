import '../../component/format.dart';
import 'package:flutter/material.dart';
import '../../constanst/constanst.dart';
import '../../constanst/firstpage_constant.dart';
import 'O_drawer.dart';

class Firstpage_foodtype extends StatelessWidget {
  static String ID = 'food_type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: kappbar_color,
        title: Center(
          child: Text(
            kAppbar_title,
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        decoration: apptheme_background,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView // listview which alow to scroll down
              (children: [
            Column(
              children: [
                SizedBox(
                  height: kSizedBox_height,
                ),
                for (int i = 0; i < foodtype_list.length; i++)
                  format(
                    photoname: imageeurl[foodtype_list[i].name],
                    name: foodtype_list[i].name,
                    nextpage: foodtype_list[i].nextpage,
                  ),
              ],
            ),
          ]),
        ),
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

// format(
//   photoname: foodtype_list[0].ImgPath,
//   name: foodtype_list[0].name,
//   nextpage: foodtype_list[0].nextpage,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/french.jpeg',
//   name: "FRENCH",
//   nextpage: french.ID,
// ), //calling the function to print he format
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/italian.jpg',
//   name: "ITALIAN",
//   nextpage: italian.ID,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/japanese.jfif',
//   name: "JAPANESE",
//   nextpage: japanese.ID,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/korean.jpg',
//   name: "KOREAN",
//   nextpage: korean.ID,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/subcontinental.jpg',
//   name: "SUBCONTINENTAL",
//   nextpage: subcontiental.ID,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/thai.jpg',
//   name: "THAI",
//   nextpage: thai.ID,
// ),
// SizedBox(
//   height: kSizedBox_height,
// ),
// format(
//   photoname: 'Foodtype/turkish.jpg',
//   name: "TURKISH",
//   nextpage: turkish.ID,
// ),

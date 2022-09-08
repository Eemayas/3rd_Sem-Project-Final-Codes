// import 'package:flutter/material.dart';
// import '../../component/appbar.dart';
// import '../../Firebase/firebase_extractor.dart';
// import '../../component/recipephotoviewr.dart';

// class tryy extends StatelessWidget {
//   tryy({required this.foodtype});
//   // final String foodname;
//   // final String imgPath;
//   final String foodtype;
//   // final String collection_name;
//   // final String docs_name;
//   // final String subcollection_name;
//   static String ID = "try";

//   @override
//   Widget build(BuildContext context) {
//     double kTabbar_width = MediaQuery.of(context).size.width;
//     double kTabbar_height = MediaQuery.of(context).size.width / 7;
//     double kTabbarView_height = MediaQuery.of(context).size.height / 2;
//     double kTabbarView_width = MediaQuery.of(context).size.width;
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: SafeArea(
//             child: ListView(
//               children: [
//                 recipepage_photo(foodname: foodtype),
//                 Container(
//                   height: kTabbar_height,
//                   width: kTabbar_width,
//                   child: tabbar(),
//                 ),
//                 Container(
//                   color: Colors.amber,
//                   height: kTabbarView_height,
//                   child: TabBarView(
//                     children: [
//                       Center(
//                           child: firebase_extractor(
//                         selection: 0,
//                       )),
//                       Center(
//                           child: firebase_extractor(
//                         selection: 1,
//                       )),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

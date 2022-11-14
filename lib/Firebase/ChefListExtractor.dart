// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:image_from_firebase_public/constanst/constanst.dart';

// import '../screen/ListTile_Recipe.dart';
// import '../screen/Recipee_Page.dart';


// class ChefListEXtractor extends StatelessWidget {
//   const ChefListEXtractor({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   return StreamBuilder(
//       /// connecteted to the pathhof the neeeded collection
//       stream: FirebaseFirestore.instance
//           .collection("From Chef")
//           // .doc("From Chef")
//           // .collection(foodlist_s)
//           .snapshots(),

//       builder: (BuildContext context,
//           AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
//         if (snapshot.hasData && snapshot.data != null) {
//           print("total document : ${snapshot.data!.docs.length}");
//           if (snapshot.data!.docs.isNotEmpty) {
//             for(int i=0;i<snapshot.data!.docs.length,i++)
//             Map<String, dynamic> ChefFoofList =
//                 snapshot.data!.docs[i].data();
//             if (datastore.isEmpty) {
//               return Text(
//                 "Document Is Empty",
//                 style: TextStyle(fontSize: 50),
//               );
//             } else {
//               return ListView(
//                 children: [
//                   for (int ii = 1; ii <= datastore.length; ii++)
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Listtile_Recipe(
//                             texttt: datastore[ii.toString() as String]),
//                         // Card(
//                         //   color: Colors.white54,
//                         //   elevation: 20,
//                         //   child: Text(
//                         //     " No. " +
//                         //         ii.toString() +
//                         //         ". \n" +
//                         //         datastore[ii.toString() as String],
//                         //     style: TextStyle(fontSize: 20),
//                         //   ),
//                         // ),
//                         // SizedBox(
//                         //   height: ratio_height(context, 15),
//                         // )
//                       ],
//                     ),
//                 ],
//               );
//             }
//           } else {
//             return Text(
//               "DataBase Error",
//               style: TextStyle(fontSize: 40),
//             );
//           }
//         } else {
//           return Center(
//             child: Text(
//               "DataBase Error",
//               style: TextStyle(fontSize: 30),
//             ),
//           );
//         }
//       },
//     );
//   }
// }


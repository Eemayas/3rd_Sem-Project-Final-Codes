import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../screen/ListTile_Recipe.dart';

class ChefRecipeExtractor extends StatelessWidget {
  ChefRecipeExtractor(
      {Key? key, required this.FoodListName, required this.selection})
      : super(key: key);
  final String FoodListName;
  final int selection;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      /// connecteted to the pathhof the neeeded collection
      stream: FirebaseFirestore.instance
          .collection("From Chef")
          .doc("From Chef")
          .collection(FoodListName)
          .snapshots(),

      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          print("total document : ${snapshot.data!.docs.length}");
          if (snapshot.data!.docs.isNotEmpty) {
            Map<String, dynamic> datastore =
                snapshot.data!.docs[selection].data();
            if (datastore.isEmpty) {
              return Text(
                "Document Is Empty",
                style: TextStyle(fontSize: 50),
              );
            } else {
              return ListView(
                children: [
                  for (int ii = 1; ii <= datastore.length; ii++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Listtile_Recipe(
                            texttt: datastore[ii.toString() as String]),
                        // Card(
                        //   color: Colors.white54,
                        //   elevation: 20,
                        //   child: Text(
                        //     " No. " +
                        //         ii.toString() +
                        //         ". \n" +
                        //         datastore[ii.toString() as String],
                        //     style: TextStyle(fontSize: 20),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: ratio_height(context, 15),
                        // )
                      ],
                    ),
                ],
              );
            }
          } else {
            return Text(
              "DataBase Error",
              style: TextStyle(fontSize: 40),
            );
          }
        } else {
          return Center(
            child: Text(
              "DataBase Error",
              style: TextStyle(fontSize: 30),
            ),
          );
        }
      },
    );
  }
}

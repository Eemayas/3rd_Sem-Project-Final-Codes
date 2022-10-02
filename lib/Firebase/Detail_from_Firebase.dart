import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';

import '../constanst/Tile_for_detail.dart';

class Deatil_extractor extends StatelessWidget {
  final String Device_Orientation;
  final String email;
  Deatil_extractor({required this.email, required this.Device_Orientation});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      /// connecteted to the pathhof the neeeded collection
      stream: FirebaseFirestore.instance
          .collection("User_detail")
          .doc("ACCOUNTS")
          .collection(email)
          .snapshots(),

      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          print("total document : ${snapshot.data!.docs.length}");
          if (snapshot.data!.docs.isNotEmpty) {
            Map<String, dynamic> datastore = snapshot.data!.docs[0].data();
            if (datastore.isEmpty) {
              return Text(
                "Document Is Empty",
                style: TextStyle(fontSize: 50),
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: Device_Orientation == Portraitt.ID
                        ? MediaQuery.of(context).size.height * 0.178125 / 4
                        : MediaQuery.of(context).size.width * 0.178125 / 4),
                Tile_for_detail(
                    Device_Orientation: Device_Orientation,
                    Text_list: datastore["Name"],
                    Iccon: Icon(Icons.person)),
                Tile_for_detail(
                    Device_Orientation: Device_Orientation,
                    Text_list: datastore['Phone Number'],
                    Iccon: Icon(Icons.phone)),
                Tile_for_detail(
                    Device_Orientation: Device_Orientation,
                    Text_list: datastore["Email"],
                    Iccon: Icon(Icons.email)),
                Tile_for_detail(
                    Device_Orientation: Device_Orientation,
                    Text_list: datastore["Address"],
                    Iccon: Icon(Icons.location_on)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image(image: AssetImage("image/2.png")),
                )
              ],
            );
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

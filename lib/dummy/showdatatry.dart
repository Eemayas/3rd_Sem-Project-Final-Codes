import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_from_firebase_public/dummy/dataentry.dart';

class documenttry extends StatelessWidget {
  const documenttry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: firebase_extractor1(),
      )),
    );
  }
}

class firebase_extractor1 extends StatelessWidget {
  const firebase_extractor1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      /// connecteted to the pathhof the neeeded collection
      stream: FirebaseFirestore.instance
          .collection("Datamealapp")
          .doc("Chinese")
          .collection("Chinese Stir Fry Spicy Chicken")
          .snapshots(),

      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          print("total document : ${snapshot.data!.docs.length}");
          if (snapshot.data!.docs.isNotEmpty) {
            Map<String, dynamic> datastore = snapshot.data!.docs[0].data();
            if (datastore.isEmpty) {
              return Text(
                "NOT document",
                style: TextStyle(fontSize: 50),
              );
            }

            return Column(
              children: [
                for (int ii = 1; ii < datastore.length; ii++)
                  Card(
                    child: Text(datastore[ii.toString() as String]),
                  ),
                // Card(
                //   child: Text(datastore["1"]),
                // ),
                // Card(
                //   child: Text(datastore["2"]),
                // ),
                // Card(
                //   child: Text(datastore["3"]),
                // ),
              ],
            );
//getting data and savinf in step 1
            // String key =
            //     snapshot.data!.docs.elementAt(index).get('1');
            // String key1 =
//                       //     snapshot.data!.docs.elementAt(index).get('2');

// //step 2
//                       String key = datastore["1"];
//                       String key1 = datastore["2"];
//                       String key3 = datastore["3"];
//                       return Column(
//                         children: [
//                           Card(child: Text(key)),
//                           Card(child: Text(key1)),
//                           Card(
//                             child: Text(key3),
//                           ),
//                         ],
//                       );

          } else {
            return Text(
              "NOT document",
              style: TextStyle(fontSize: 40),
            );
          }
        } else {
          return Center(
            child: Text(
              "error",
              style: TextStyle(fontSize: 30),
            ),
          );
        }
      },
    );
  }
}

class firebase_extractor extends StatelessWidget {
  const firebase_extractor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      /// connecteted to the pathhof the neeeded collection
      stream: FirebaseFirestore.instance
          .collection("Datamealapp")
          .doc("Chinese")
          .collection("Chinese Stir Fry Spicy Chicken")
          .snapshots(),

      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          print("total document : ${snapshot.data!.docs.length}");
          if (snapshot.data!.docs.isNotEmpty) {
            Map<String, dynamic> datastore = snapshot.data!.docs[1].data();
            if (datastore.isEmpty) {
              return Text(
                "NOT document",
                style: TextStyle(fontSize: 50),
              );
            }

            return Column(
              children: [
                for (int ii = 1; ii < datastore.length; ii++)
                  Card(
                    child: Text(datastore[ii.toString() as String]),
                  ),
                // Card(
                //   child: Text(datastore["1"]),
                // ),
                // Card(
                //   child: Text(datastore["2"]),
                // ),
                // Card(
                //   child: Text(datastore["3"]),
                // ),
              ],
            );
//getting data and savinf in step 1
            // String key =
            //     snapshot.data!.docs.elementAt(index).get('1');
            // String key1 =
//                       //     snapshot.data!.docs.elementAt(index).get('2');

// //step 2
//                       String key = datastore["1"];
//                       String key1 = datastore["2"];
//                       String key3 = datastore["3"];
//                       return Column(
//                         children: [
//                           Card(child: Text(key)),
//                           Card(child: Text(key1)),
//                           Card(
//                             child: Text(key3),
//                           ),
//                         ],
//                       );

          } else {
            return Text(
              "NOT document",
              style: TextStyle(fontSize: 40),
            );
          }
        } else {
          return Center(
            child: Text(
              "error",
              style: TextStyle(fontSize: 30),
            ),
          );
        }
      },
    );
  }
}

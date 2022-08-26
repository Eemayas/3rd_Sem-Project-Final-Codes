import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_from_firebase_public/dummy/showdata.dart';
import 'package:image_from_firebase_public/dummy/showdatatry.dart';

import 'firebase.dart';

class dataentry extends StatelessWidget {
  const dataentry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                firebase_entry().Insert_in_subcollection();
              },
              child: Text("entry the data"),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => documenttry()));
              },
              child: Text("show"),
            )
          ],
        )),
      ),
    );
  }
}

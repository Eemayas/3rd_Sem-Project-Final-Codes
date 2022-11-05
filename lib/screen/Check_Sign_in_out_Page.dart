import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Starting_Page3.dart';

import 'Starting_Page2.dart';

class Check_Sign_in_out_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // if (FirebaseAuth.instance.currentUser?.uid == null) {
    //   return Starting_Page_2();
    // } else {
    //   return Starting_Page_3();
    // }
    // //return Starting_Page_3();
    // //
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print("checkedpage");
              return Starting_Page_3();
            } else {
              return Starting_Page_2();
            }
          }),
    );
  }
}

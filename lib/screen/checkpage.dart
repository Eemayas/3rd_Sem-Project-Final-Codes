import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'First_foodtype_page.dart';
import 'Starting_page2.dart';

class Checkpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Navigator.of(context).pop();
              // Navigator.pushNamed(context, Firstpage_food.ID);
              return Firstpage_food();
            } else {
              return startingpage2();
            }
          }),
    );
  }
}

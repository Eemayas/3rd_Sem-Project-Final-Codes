import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Firebase/Favorities/Favorites_to_Firebase.dart';

String Email = "mealup";
Future<void> get_current_User() async {
  FirebaseAuth.instance.userChanges().listen((User? user) async {
    if (user == null) {
      print('User is currently signed out!(getCurrent User)');
      // showAlertDialog("User is currently signed out!");
    } else {
      print('User is signed in!(getCurrent User)');
      var currentUser = FirebaseAuth.instance.currentUser!.email;

      if (currentUser != null) {
        print("email:   ${currentUser}");
      }
      Email = currentUser!;
    }
  });
}

void route({required String Emaill}) async {
  Map<String, dynamic> initialization = {};
  var db = FirebaseFirestore.instance.collection("FAVORITIES");

  await db
      .doc("ACCOUNTS")
      .collection(Emaill)
      .doc("Favorities")
      .set(initialization)
      .then((value) => print(" route initilization"));
}

Future<void> initilization({required String Emaill}) async {
  await get_current_User();
  route(Emaill: Emaill);
  Favorities__Firebase_entry(
      ImgUrl: "null",
      Foodlist_s_name: "null",
      Foodtype_f_name: "null",
      email: Emaill);
}

Future<void> initilizationn() async {
  await get_current_User();
  route(Emaill: Email);
  Favorities__Firebase_entry(
      ImgUrl: "null",
      Foodlist_s_name: "null",
      Foodtype_f_name: "null",
      email: Email);
}

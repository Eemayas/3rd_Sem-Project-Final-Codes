import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Emaill with ChangeNotifier {
  String _Email = "mealup@gmail.com";
  String get Email => _Email;
  void Provider_get_current_user() {
    FirebaseAuth.instance.userChanges().listen((User? user) async {
      if (user == null) {
        print('User is currently signed out!(Provider)');
        // showAlertDialog("User is currently signed out!");
      } else {
        print('User is signed in!(Provider)');
        var currentUser = FirebaseAuth.instance.currentUser!.email;

        if (currentUser != null) {
          print("email:   ${currentUser}");
        }
        _Email = currentUser!;
      }
    });
    notifyListeners();
  }
}

class Provider_Fav_list with ChangeNotifier {
  List<dynamic> _Fav_list = [];
  List<dynamic> get Fav_list => _Fav_list;
  void provide_get_favlist(String Email) async {
    final value = await FirebaseFirestore.instance
        .collection("FAVORITIES")
        .doc("ACCOUNTS")
        .collection(Email)
        .doc("Favorities")
        .get();
    _Fav_list = value.data()!["fav"];
  }
}

class lengthhh with ChangeNotifier {
  int _length = 0;
  int get length => _length;
  void input(int z) {
    _length = z;
  }
}

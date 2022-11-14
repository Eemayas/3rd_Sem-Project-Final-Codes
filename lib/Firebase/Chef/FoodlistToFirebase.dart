import 'package:cloud_firestore/cloud_firestore.dart';

void Foodlist__Firebase_entry({required String FoodName}) {
  Map<String, dynamic> datatta = {
    "List": FieldValue.arrayUnion([
      {"Name": FoodName}
    ])
  };
  var db = FirebaseFirestore.instance.collection("From Chef");

  db
      .doc("From Chef")
      .update(datatta)
      .then((value) => print("chef list Added to FireBase"));
}

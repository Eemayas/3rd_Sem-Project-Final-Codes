import 'package:cloud_firestore/cloud_firestore.dart';

void Favorities__Firebase_entry(
    {required String Foodtype_f_name,
    required String Foodlist_s_name,
    required String email,
    required String ImgUrl}) {
  Map<String, dynamic> datatta = {
    "fav": FieldValue.arrayUnion([
      {
        "Foodtype_f": Foodtype_f_name,
        "Foodlist_s": Foodlist_s_name,
        "ImgUrl": ImgUrl,
      }
    ])
  };
  var db = FirebaseFirestore.instance.collection("FAVORITIES");

  db
      .doc("ACCOUNTS")
      .collection(email)
      .doc("Favorities")
      .update(datatta)
      .then((value) => print("Added to FireBase"));
}

import 'package:cloud_firestore/cloud_firestore.dart';

void Remove_from_favorities(
    {required String Foodtype_f,
    required String Foodlist_s,
    required String ImgUrl,
    required String email}) {
  var db = FirebaseFirestore.instance.collection("FAVORITIES");
  db
      .doc("ACCOUNTS")
      .collection(email)
      .doc("Favorities")
      .update({
        "fav": FieldValue.arrayRemove([
          {"Foodtype_f": Foodtype_f, "Foodlist_s": Foodlist_s, "ImgUrl": ImgUrl}
        ]),
      })
      .then((value) => print("removed"))
      .onError((error, stackTrace) => print(error));
}

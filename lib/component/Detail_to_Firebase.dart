import 'package:cloud_firestore/cloud_firestore.dart';

void Detail_to_firebase(
    String _email, String _name, String _ph_number, String _address) {
  Map<String, String> info = {
    "Email": _email,
    "Name": _name,
    "Phone Number": _ph_number,
    "Address": _address,
  };
  var db = FirebaseFirestore.instance.collection("User_detail");
  db.doc(_email).set(info).then((value) => print("sucesss"));
}

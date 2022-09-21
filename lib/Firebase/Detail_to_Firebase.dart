import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

void Detail_to_firebase(
    String _email, String _name, String _ph_number, String _address) {
  Map<String, String> info = {
    "Email": _email,
    "Name": _name,
    "Phone Number": _ph_number,
    "Address": _address,
  };
  String tojson = json.encode(info);
  Map<String, String> info2 = {_email: tojson};
  var db = FirebaseFirestore.instance.collection("User_detail");
  db
      .doc("ACCOUNTS")
      .collection(_email)
      .doc("info")
      .set(info)
      .then((value) => print("sucesss"));
}

// void Detail_to_firebase(
//     String _email, String _name, String _ph_number, String _address)
// {
//   WorkPost.fromJson(Map<String, dynamic> json)
//       : _name = json['name'],
//        _ph_number = json['phoneNumber'],
//         _address = json['location'],
   
//         image = json['imageString'];

//   // Map<String, dynamic> toJson() => {
//   //       'name': _name,
//   //       'phoneNumber': phoneNumber,
//   //       'location': location,
//   //       'description': description,
//   //       'imageString': imageString,
//   //     };
// }
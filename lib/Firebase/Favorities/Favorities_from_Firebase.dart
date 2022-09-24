import 'package:cloud_firestore/cloud_firestore.dart';

Future<List> Favorities_from_Firebase({required String email}) async {
  List<dynamic> friendsList;
  final value = await FirebaseFirestore.instance
      .collection("FAVORITIES")
      .doc("ACCOUNTS")
      .collection(email)
      .doc("Favorities")
      .get();
  friendsList = value.data()!["fav"];
  List data = friendsList;
  return friendsList;
}

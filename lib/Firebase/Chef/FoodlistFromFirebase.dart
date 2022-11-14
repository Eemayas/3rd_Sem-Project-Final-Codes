import 'package:cloud_firestore/cloud_firestore.dart';

Future<List> FoodlistChef_from_Firebase() async {
  List<dynamic> ChefFoodList;
  final value = await FirebaseFirestore.instance
      .collection("From Chef")
      .doc("From Chef")
      .get();
  ChefFoodList = value.data()!["List"];

  return ChefFoodList;
}

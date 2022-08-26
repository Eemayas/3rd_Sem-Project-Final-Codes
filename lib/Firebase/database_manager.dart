import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class FireStoreDataBase {
  String? downloadURL;

  Future getData(String photoname) async {
    try {
      await downloadURLExample(photoname);
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> downloadURLExample(String photoname) async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child("$photoname")
        .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}

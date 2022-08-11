import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Firebase/database_manager.dart';

class photoviewer extends StatelessWidget {
  photoviewer(this.photoname);
  final String? photoname;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FireStoreDataBase().getData('$photoname'),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text(
            "Something went wrong",
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Image.network(
            snapshot.data.toString(),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

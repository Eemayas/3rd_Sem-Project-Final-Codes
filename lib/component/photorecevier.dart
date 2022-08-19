import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Firebase/database_manager.dart';

class photoviewer_format extends StatelessWidget {
  photoviewer_format(this.photoname);
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
          return CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(snapshot.data.toString()),

            // Image.network(
            //   snapshot.data.toString(),
            //   fit: BoxFit.cover,
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class photoviewer_recipee extends StatelessWidget {
  photoviewer_recipee(this.photoname);
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
          // return Container(
          //   height: MediaQuery.of(context).size.height / 3,
          //   width: double.infinity,
          //   child: Image.network(
          //     snapshot.data.toString(),
          //     fit: BoxFit.cover,
          //   ),
          // );
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              snapshot.data.toString(),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

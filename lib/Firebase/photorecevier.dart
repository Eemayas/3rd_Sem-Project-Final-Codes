import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'database_manager.dart';

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
        return //CachedNetworkImage(
            //   imageUrl: snapshot.data.toString(),
            //   placeholder: (context, url) => CircularProgressIndicator(),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            // );
            //CachedNetworkImage(imageUrl: snapshot.data.toString());
            const Center(child: CircularProgressIndicator());
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

class offline extends StatelessWidget {
  offline(this.photoname);
  final String photoname;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 30, backgroundImage: CachedNetworkImageProvider(photoname)

        //"https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg")
        //"https://firebasestorage.googleapis.com/v0/b/meal-a5eab.appspot.com/o/Foodlist%2FChinese%2FChinese%20Bayberries%20Myrica%20rubra.jpg?alt=media&token=f6918105-06c7-4b94-8d23-31770aa8649b"),

        // Image.network(
        //   snapshot.data.toString(),
        //   fit: BoxFit.cover,
        );
    //   return ClipRRect(
    //     borderRadius: BorderRadius.circular(20),
    //     child: CachedNetworkImage(
    //         imageUrl:
    //             "https://firebasestorage.googleapis.com/v0/b/meal-a5eab.appspot.com/o/Foodlist%2FChinese%2FChinese%20Bayberries%20Myrica%20rubra.jpg?alt=media&token=f6918105-06c7-4b94-8d23-31770aa8649b"),
    //   );
    // }
  }
}

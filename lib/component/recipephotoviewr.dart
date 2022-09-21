import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Firebase/photorecevier.dart';

class recipepage_photo extends StatelessWidget {
  recipepage_photo({
    required this.foodname,
    required this.imageUrl,
  });
  final String imageUrl;

  final String foodname;

// final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            //photoviewer_recipee('Foodlist/Chinese/chinese.jpg'),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: Text(
                  foodname,
                  style: TextStyle(
                      fontSize: 36, backgroundColor: Colors.grey.shade300),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import 'photorecevier.dart';

class recipepage_photo extends StatelessWidget {
  const recipepage_photo({
    Key? key,
    required this.foodname,
  }) : super(key: key);

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
            photoviewer_recipee('Foodlist/Chinese/chinese.jpg'),
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

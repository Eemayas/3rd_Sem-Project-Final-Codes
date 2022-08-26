import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/screen/foodlist.dart';
import 'package:image_from_firebase_public/screen/foodtype.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    ' MEAL UP',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'mealup@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          lists_drawer(
            Drawer_Text: 'Profile',
            Icons: Icons.person,
          ),
          lists_drawer(
              Drawer_Text: 'Foodtype',
              Icons: Icons.food_bank_outlined,
              onpressed: () {
                Navigator.pushNamed(context, foodtype.ID);
              }),
          lists_drawer(
              Drawer_Text: 'foodlist',
              Icons: Icons.food_bank_outlined,
              onpressed: () {
                Navigator.pushNamed(context, foodlist.ID);
              }),
          lists_drawer(Drawer_Text: 'Settings', Icons: Icons.settings),
          lists_drawer(Drawer_Text: "Log out", Icons: Icons.arrow_back),
        ],
      ),
    );
  }
}

class lists_drawer extends StatelessWidget {
  lists_drawer(
      {required this.Icons, required this.Drawer_Text, this.onpressed});
  final IconData Icons;
  final String Drawer_Text;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons),
      title: Text(
        Drawer_Text,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: onpressed,
    );
  }
}

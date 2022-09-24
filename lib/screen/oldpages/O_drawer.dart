import 'package:flutter/material.dart';
import '../../constanst/foodname.dart';
import 'O_First_page_foodlist.dart';

import '../Profile_Page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double container_height = 100;
    double container_width = 100;
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
                    width: container_width,
                    height: container_height,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/mealup.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
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
            onpressed: () {
              Navigator.pushNamed(context, Profile_Page.ID);
            },
          ),
          lists_drawer(
              Drawer_Text: 'Foodtype',
              Icons: Icons.food_bank_outlined,
              onpressed: () {
                Navigator.pushNamed(context, Firstpage_foodtype.ID);
              }),
          lists_drawer(
              Drawer_Text: 'foodlist',
              Icons: Icons.food_bank_outlined,
              onpressed: () {
                Navigator.pushNamed(context, foodtype_name_list.nChinese);
              }),
          lists_drawer(
              Drawer_Text: 'Data Entry',
              Icons: Icons.settings,
              onpressed: () {
                Navigator.pushNamed(context, "datata");
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

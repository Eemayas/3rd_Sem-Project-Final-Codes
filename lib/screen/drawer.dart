import 'package:flutter/material.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:image_from_firebase_public/screen/profile_page.dart';

import 'First_foodtype_page.dart';

class New_drawer_page extends StatelessWidget {
  const New_drawer_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/background2.png"),
                  fit: BoxFit.fill)),
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: total_height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("image/Drawerbackground.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/mealup.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  GradientText(
                    'Meal UP',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.italic,
                      fontSize: 22,
                    ),
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffCC540D),
                    ],
                  ),
                  GradientText(
                    'mealup@gmail.com',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xffCC540D),
                    ],
                  ),
                ],
              ),
            ),
            Tile_drawer_page(
              Text_list: "Profile",
              Iccon: Icon(Icons.person),
              onpressed: () {
                Navigator.pushNamed(context, profile_page.ID);
              },
            ),
            Tile_drawer_page(
              Text_list: "Cuisines",
              Iccon: Icon(Icons.restaurant),
              onpressed: () {
                Navigator.pushNamed(context, Firstpage_food.ID);
              },
            ),
            Tile_drawer_page(
                Text_list: "Info", Iccon: Icon(Icons.info_outline)),
            Expanded(child: Container()),
            Tile_drawer_page(
                Text_list: "Data Entry(Developer Only)",
                Iccon: Icon(Icons.devices_rounded),
                onpressed: () {
                  Navigator.pushNamed(context, "datata");
                }),
            Tile_drawer_page(
                Text_list: "Logout", Iccon: Icon(Icons.exit_to_app)),
          ]),
        ),
      ),
    );
  }
}

class Tile_drawer_page extends StatelessWidget {
  final String Text_list;
  final Widget Iccon;
  final Function()? onpressed;
  Tile_drawer_page(
      {required this.Text_list, required this.Iccon, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 9, bottom: 9),
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Iccon,
              ),
              Expanded(child: Container()),
              Text(
                Text_list,
                style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

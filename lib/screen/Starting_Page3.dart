import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/screen/Favorities_page.dart';
import 'package:image_from_firebase_public/screen/Firstpage_Food_Page.dart';
import 'package:image_from_firebase_public/screen/Profile_Page.dart';

import '../constanst/constanst.dart';

class Starting_Page_3 extends StatefulWidget {
  static String ID = "starting page 3";
  @override
  State<Starting_Page_3> createState() => _Starting_Page_3State();
}

class _Starting_Page_3State extends State<Starting_Page_3> {
  final screen = [
    Firstpage_Food_Page(),
    Favorities_Page(),
    Profile_Page(),
  ];
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar:
            OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return CurvedNavigationBar(
              height: ratio_height(context, 60), //60
              color: Colors.orangeAccent,
              buttonBackgroundColor: Colors.amberAccent,
              key: _bottomNavigationKey,
              backgroundColor: Colors.transparent,
              items: <Widget>[
                Icon(
                  Icons.home,
                  size: ratio_height(context, 24),
                ),
                Icon(
                  Icons.favorite,
                  size: ratio_height(context, 24),
                ), //24,),
                Icon(
                  Icons.person,
                  size: ratio_height(context, 24),
                ) //24,),
              ],
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
            );
          } else {
            return CurvedNavigationBar(
              height: 60, //60
              color: Colors.orangeAccent,
              buttonBackgroundColor: Colors.amberAccent,
              key: _bottomNavigationKey,
              backgroundColor: Colors.transparent,
              items: <Widget>[
                Icon(
                  Icons.home,
                  size: ratio_height(context, 45),
                ),
                Icon(
                  Icons.favorite,
                  size: ratio_height(context, 45),
                ), //24,),
                Icon(
                  Icons.person,
                  size: ratio_height(context, 45),
                ) //24,),
              ],
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
            );
          }
        }),
        body: screen[_page]
        // Container(
        //   color: Colors.blueAccent,
        //   child: Center(
        //     child: Column(
        //       children: <Widget>[
        //         Text(_page.toString(), textScaleFactor: 10.0),
        //         ElevatedButton(
        //           child: Text('Go To Page of index 1'),
        //           onPressed: () {
        //             //Page change using state does the same as clicking index 1 navigation button
        //             final CurvedNavigationBarState? navBarState =
        //                 _bottomNavigationKey.currentState;
        //             navBarState?.setPage(1);
        //           },
        //         )
        //       ],
        //     ),
        //   ),
        // )
        );
  }
}

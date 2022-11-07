import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constanst/constanst.dart';
import 'Starting_Page1.dart';

class Splash_Page extends StatefulWidget {
  static String ID = "Splash Page";
  const Splash_Page({Key? key}) : super(key: key);

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    // TODO: implement initState

    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 900), () {});
    Navigator.of(context).pushReplacement(PageTransition(
        type: PageTransitionType.fade,
        duration: Duration(seconds: 1),
        child: Starting_Page_1()));

    //context, MaterialPageRoute( builder: (builder) => Starting_Page_1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration_backgroundimage,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(10.0, 10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              )
            ],
            image: DecorationImage(
                image: AssetImage("image/logo.jpg"), fit: BoxFit.fill),
          ),
        )
      ]),
    )));
  }
}

// class Splash_Page extends StatelessWidget {
//   const Splash_Page({Key? key}) : super(key: key);
//   static String ID = "Splash Page";

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       decoration: boxDecoration_backgroundimage,
//     );
//     // return AnimatedSplashScreen(
//     //   splash: Container(
//     //     // height: MediaQuery.of(context).size.height,
//     //     //width: MediaQuery.of(context).size.width,
//     //     decoration: boxDecoration_backgroundimage,
//     //   ),
//     //   //splash: Icon(Icons.home),
//     //   nextScreen: Starting_Page_1(),
//     //   duration: 25000,
//     //   backgroundColor: Colors.blue,
//     //   splashTransition: SplashTransition.rotationTransition,
//     //   pageTransitionType: PageTransitionType.fade,
//     // );
//     // ;
//   }
// }

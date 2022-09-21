import 'package:flutter/material.dart';
import '../../../component/appbar.dart';
import '../../../Firebase/firebase_extractor.dart';
import '../../../component/recipephotoviewr.dart';
import '../../Firebase/New_Firebase_extractoe.dart';
import '../../constanst/constanst.dart';

class recipee_page extends StatelessWidget {
  recipee_page(
      {required this.foodlist_sR,
      required this.foodtype_fR,
      required this.imageUrl});
  final String foodlist_sR;
  final String foodtype_fR;
  static String ID = "recipppp";
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double kTabbar_width = MediaQuery.of(context).size.width;
    double kTabbar_height = MediaQuery.of(context).size.width / 7;
    double kTabbarView_height = MediaQuery.of(context).size.height / 2;
    double kTabbarView_width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          decoration: apptheme_background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SafeArea(
              child: ListView(
                children: [
                  recipepage_photo(
                    foodname: foodlist_sR,
                    imageUrl: imageUrl,
                  ),
                  Container(
                    height: kTabbar_height,
                    width: kTabbar_width,
                    child: tabbar(),
                  ),
                  Container(
                    color: Colors.amber,
                    height: kTabbarView_height,
                    child: TabBarView(
                      children: [
                        Center(
                            child: new_firebase_extractor(
                          foodtype_f: foodtype_fR,
                          foodlist_s: foodlist_sR,
                          selection: 0,
                        )),
                        Center(
                            child: firebase_extractor(
                          foodtype_f: foodtype_fR,
                          foodlist_s: foodlist_sR,
                          selection: 1,
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

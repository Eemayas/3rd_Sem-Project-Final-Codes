import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/foodname.dart';
import 'package:image_from_firebase_public/screen/First_page_foodlist.dart';

import '../component/format.dart';
import '../constanst/secondpage_foodlists_constant.dart';
import 'package:image_from_firebase_public/screen/recipee/try.dart';

class secondpage_foodlist extends StatelessWidget {
  secondpage_foodlist({required this.Foodtype_name});
  final String Foodtype_name;
  List secondpage_list = Foodlist_AMERICAN;
  Map secondpage_map_imageurl = AMERICAN_imageeurl;
  @override
  Widget build(BuildContext context) {
    if (Foodtype_name == foodtype_name_list.nAmerican) {
      secondpage_list = Foodlist_AMERICAN;
      secondpage_map_imageurl = AMERICAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nBritish) {
      secondpage_list = Foodlist_BRITISH;
      secondpage_map_imageurl = BRITISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nCaribbean) {
      secondpage_list = Foodlist_CARIBBEAN;
      secondpage_map_imageurl = CARIBBEAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nChinese) {
      secondpage_list = Foodlist_CHINESE;
      secondpage_map_imageurl = CHINESE_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nFrench) {
      secondpage_list = Foodlist_FRENCH;
      secondpage_map_imageurl = FRENCH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nGreek) {
      secondpage_list = Foodlist_GREEK;
      secondpage_map_imageurl = GREEK_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nIndian) {
      secondpage_list = Foodlist_INDIAN;
      secondpage_map_imageurl = INDIAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nItalian) {
      secondpage_list = Foodlist_ITALIAN;
      secondpage_map_imageurl = ITALIAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nJapnese) {
      secondpage_list = Foodlist_JAPANESES;
      secondpage_map_imageurl = JAPANESES_imageeurl;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(Foodtype_name),
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < secondpage_list.length; i++)
              format_secondpage(
                  imageUrl: secondpage_map_imageurl[secondpage_list[i].name],
                  photo_url: secondpage_map_imageurl[secondpage_list[i].name],
                  name: secondpage_list[i].name,
                  //nextpage: tryy.ID
                  foodtype_f: Foodtype_name,
                  foodlist_s: secondpage_list[i].name),
          ],
        )),
      ),
    );
  }
}

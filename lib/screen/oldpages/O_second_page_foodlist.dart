import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/foodname.dart';

import '../../component/format.dart';
import '../../constanst/constanst.dart';
import '../../constanst/secondpage_foodlists_constant.dart';

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
    } else if (Foodtype_name == foodtype_name_list.nMediterranean) {
      secondpage_list = Foodlist_MEDITERRANEAN;
      secondpage_map_imageurl = MEDITERRANEAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMexican) {
      secondpage_list = Foodlist_MEXICAN;
      secondpage_map_imageurl = MEXICAN_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMorccan) {
      secondpage_list = Foodlist_MOROCCO;
      secondpage_map_imageurl = MOROCCO_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nMiddle_Eastern) {
      secondpage_list = Foodlist_MIDDLEEAST;
      secondpage_map_imageurl = MIDDLEEAST_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nSpanish) {
      secondpage_list = Foodlist_SPANSIH;
      secondpage_map_imageurl = SPANISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nThai) {
      secondpage_list = Foodlist_THAI;
      secondpage_map_imageurl = THAI_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nTurkish) {
      secondpage_list = Foodlist_TURKISH;
      secondpage_map_imageurl = TURKISH_imageeurl;
    } else if (Foodtype_name == foodtype_name_list.nVietnamese) {
      secondpage_list = Foodlist_VIETNAMESE;
      secondpage_map_imageurl = VIETNAMESE_imageeurl;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappbar_color,
        title: Center(child: Text(Foodtype_name)),
      ),
      body: SafeArea(
        child: Container(
          decoration: apptheme_background,
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
      ),
    );
  }
}

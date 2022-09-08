import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:image_from_firebase_public/constanst/foodname.dart';
import 'package:image_from_firebase_public/screen/listpage/italian.dart';
import 'package:image_from_firebase_public/screen/listpage/japnese.dart';
import 'package:image_from_firebase_public/screen/listpage/korean.dart';
import 'package:image_from_firebase_public/screen/listpage/subcontinental.dart';
import 'package:image_from_firebase_public/screen/listpage/thai.dart';
import 'package:image_from_firebase_public/screen/listpage/turkish.dart';
import 'package:image_from_firebase_public/screen/recipee/try.dart';
import 'package:image_from_firebase_public/screen/second_page_foodlist.dart';
import 'dummy/dataentry_page.dart';
import 'dummy/foodlist.dart';
import 'screen/First_page_foodlist.dart';
import '/screen/recipeepage.dart';

import 'dummy/dataentry.dart';
import 'screen/listpage/chinese.dart';
import 'screen/listpage/french.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseDatabase databasee;
  databasee = FirebaseDatabase.instance;
  databasee.setPersistenceEnabled(true);
  // databasee.setPersistenceCacheSizeBytes(100000000);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: Firstpage_foodtype.ID,
      routes: {
        for (int i = 0; i < secondpagelist.length; i++)
          secondpagelist[i]: (context) =>
              new secondpage_foodlist(Foodtype_name: secondpagelist[i]),
        "data": (context) => dataentry(),
        foodlist.ID: (context) => foodlist(),
        Firstpage_foodtype.ID: (context) => Firstpage_foodtype(),
        // "recipeepage.ID": (context) => recipee_page(foodtype: '',),
        french.ID: (context) => french(),
        chinese.ID: (context) => chinese(),
        italian.ID: (context) => italian(),
        japanese.ID: (context) => japanese(),
        korean.ID: (context) => korean(),
        subcontiental.ID: (context) => subcontiental(),
        thai.ID: (context) => thai(),
        turkish.ID: (context) => turkish(),
        //tryy.ID: (context) => new tryy(foodtype: "chiness"),
        "datata": (context) => dataentrypage()
      },
    );
  }
}



































 //   foodtype_name_list.nAmerican: (context) => new secondpage_foodlist(
        //       Foodtype_name: foodtype_name_list.nAmerican),
        // foodtype_name_list.nBritish: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nBritish),
        // foodtype_name_list.nCaribbean: (context) => new secondpage_foodlist(
        //     Foodtype_name: foodtype_name_list.nCaribbean),
        // foodtype_name_list.nChinese: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nChinese),
        // foodtype_name_list.nFrench: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nFrench),
        // foodtype_name_list.nGreek: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nGreek),
        // foodtype_name_list.nIndian: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nIndian),
        // foodtype_name_list.nItalian: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nItalian),
        // foodtype_name_list.nJapnese: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nJapnese),
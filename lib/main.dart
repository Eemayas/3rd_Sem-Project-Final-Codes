import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/screen/listpage/italian.dart';
import 'package:image_from_firebase_public/screen/listpage/japnese.dart';
import 'package:image_from_firebase_public/screen/listpage/korean.dart';
import 'package:image_from_firebase_public/screen/listpage/subcontinental.dart';
import 'package:image_from_firebase_public/screen/listpage/thai.dart';
import 'package:image_from_firebase_public/screen/listpage/turkish.dart';
import 'package:image_from_firebase_public/screen/recipee/try.dart';
import '/screen/foodlist.dart';
import '/screen/foodtype.dart';
import '/screen/recipeepage.dart';
import '/screen/slidebar.dart';
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
      initialRoute: foodtype.ID,
      routes: {
        "data": (context) => dataentry(),
        foodlist.ID: (context) => foodlist(),
        foodtype.ID: (context) => foodtype(),
        "recipeepage.ID": (context) => recipeepage(),
        "slidebar.ID": (context) => slidebar(),
        french.ID: (context) => french(),
        chinese.ID: (context) => chinese(),
        italian.ID: (context) => italian(),
        japanese.ID: (context) => japanese(),
        korean.ID: (context) => korean(),
        subcontiental.ID: (context) => subcontiental(),
        thai.ID: (context) => thai(),
        turkish.ID: (context) => turkish(),
        tryy.ID: (context) => new tryy(foodtype: "chiness"),
      },
    );
  }
}

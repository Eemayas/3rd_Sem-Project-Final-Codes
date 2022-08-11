import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '/screen/foodlist.dart';
import '/screen/foodtype.dart';
import '/screen/recipeepage.dart';
import '/screen/slidebar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: "foodtype.ID",
      routes: {
        "foodlist.ID": (context) => foodlist(),
        "foodtype.ID": (context) => foodtype(),
        "recipeepage.ID": (context) => recipeepage(),
        "slidebar.ID": (context) => slidebar(),
      },
    );
  }
}

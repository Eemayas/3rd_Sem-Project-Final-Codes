import 'package:flutter/material.dart';
import '/screen/foodlist.dart';
import '/screen/foodtype.dart';
import '/screen/recipeepage.dart';
import '/screen/slidebar.dart';

main() {
  runApp(MyApp());
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

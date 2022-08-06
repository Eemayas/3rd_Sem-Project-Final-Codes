import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

class foodlist extends StatelessWidget {
  static String ID = 'food_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('foodlist'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'foodlist page',
                style: TextStyle(fontSize: 30),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "recipeepage.ID");
                  },
                  child: Text("nextpage"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class slidebar extends StatelessWidget {
  static String ID = 'slide_bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slideBar'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'slidebar',
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

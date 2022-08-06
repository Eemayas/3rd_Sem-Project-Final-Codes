import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

class recipeepage extends StatelessWidget {
  static String ID = 'recipee_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('recipee page')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'recipee page',
                style: TextStyle(fontSize: 30),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "foodtype.ID");
                  },
                  child: Text("nextpage"))
            ],
          ),
        ),
      ),
    );
  }
}

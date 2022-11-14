import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/Login_Component.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
import '../Firebase/Chef/FoodlistToFirebase.dart';
import '/constanst/foodname.dart';

final Map<String, String> ingredient_data = {};
final Map<String, String> step_data = {};

class dataentrypage extends StatefulWidget {
  const dataentrypage({Key? key}) : super(key: key);

  @override
  State<dataentrypage> createState() => _dataentrypageState();
}

class _dataentrypageState extends State<dataentrypage> {
  @override
  late String Foodname = 'meal';
  var selected_ingredient = '1';
  int no_ingredient = 1;
  var selected_step = '1';
  List<DropdownMenuItem<String>> ingredient =
      dropdownlist(starting: 1, ending: 20);
  List<DropdownMenuItem<String>> step = dropdownlist(starting: 1, ending: 16);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappbar_color,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Icon(
                  Icons.cancel,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SafeArea(
          child: Container(
        decoration: boxDecoration_backgroundimage,
        //decoration: apptheme_background,
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(children: [
                  Text(
                    'Data Entry',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        onChanged: (value) {
                          Foodname = value;
                          print(Foodname);
                        },
                        style: TextStyle(),
                        textAlign: TextAlign.center,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: Center(child: Text("Food Name")),
                          labelStyle: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'INGREDIENT',
                        style: TextStyle(fontSize: 15),
                      ),
                      DropdownButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        dropdownColor: Colors.white,
                        style: TextStyle(color: Colors.black),
                        value: selected_ingredient,
                        items: ingredient,
                        onChanged: (String? newvalue) {
                          setState(() {
                            selected_ingredient = newvalue!;
                            no_ingredient = int.parse(newvalue);
                          });
                        },
                      ),
                      Text(
                        'STEPS',
                        style: TextStyle(fontSize: 15),
                      ),
                      DropdownButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        dropdownColor: Colors.white,
                        style: TextStyle(color: Colors.black),
                        value: selected_step,
                        items: step,
                        onChanged: (String? newvalue) {
                          setState(() {
                            selected_step = newvalue!;
                          });
                        },
                      ),
                    ],
                  ),
                  Text(
                    'INGREDIENT',
                    style: TextStyle(fontSize: 15),
                  ),
                  for (int i = 1; i <= int.parse(selected_ingredient); i++)
                    Box(
                        Category: "INGREDIENT",
                        number: i,
                        lastnumber: int.parse(selected_ingredient),
                        Foodname: Foodname),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'STEPS',
                    style: TextStyle(fontSize: 15),
                  ),
                  for (int i = 1; i <= int.parse(selected_step); i++)
                    Box(
                        Category: "STEPS",
                        number: i,
                        lastnumber: int.parse(selected_step),
                        Foodname: Foodname),
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

List<DropdownMenuItem<String>> dropdownlist(
    {required var starting, required var ending}) {
  List<DropdownMenuItem<String>> listt = [];
  for (var i = starting; i <= ending; i++) {
    var item = DropdownMenuItem(
      child: Text(i.toString()),
      value: i.toString(),
    );
    listt.add(item);
  }
  return listt;
}

class Box extends StatefulWidget {
  Box(
      {required this.Category,
      required this.number,
      required this.lastnumber,
      required this.Foodname});
  final String Category;
  final int number;
  final int lastnumber;
  final String Foodname;

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        //height: 60,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(widget.number.toString()),
            TextFormField(
              onChanged: (value) {
                if (widget.Category == "INGREDIENT") {
                  ingredient_data[widget.number.toString()] = value;
                } else {
                  step_data[widget.number.toString()] = value;
                }
              },
              style: TextStyle(),
              textAlign: TextAlign.center,
              obscureText: false,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: Center(child: Text(widget.Category)),
                labelStyle: TextStyle(),
              ),
            ),
            if (widget.number == widget.lastnumber)
              login_button(
                  Textt: "Submit",
                  onTap: () {
                    if (widget.Category == "INGREDIENT") {
                      var db =
                          FirebaseFirestore.instance.collection("From Chef");
                      db
                          .doc("From Chef")
                          .collection(widget.Foodname)
                          .doc("INGREDIENT")
                          .set(ingredient_data)
                          .then((value) => print("sucesss"));
                      print(widget.Foodname);
                      Foodlist__Firebase_entry(FoodName: widget.Foodname);
                      for (int i = 1; i <= widget.lastnumber; i++)
                        print(ingredient_data[i.toString()]);
                    } else {
                      var db =
                          FirebaseFirestore.instance.collection("From Chef");
                      db
                          .doc("From Chef")
                          .collection(widget.Foodname)
                          .doc("STEPS")
                          .set(step_data)
                          .then((value) => print("sucesss"));

                      for (int i = 1; i <= widget.lastnumber; i++)
                        print(step_data[i.toString()]);
                    }
                    //   for (int i = 1; i <= widget.lastnumber; i++)
                    //     print(ingredient_data[i.toString()]);
                  })
            // TextButton(
            //     onPressed: () {

            //       if (widget.Category == "INGREDIENT") {
            //         var db =
            //             FirebaseFirestore.instance.collection("From Chef");
            //         db
            //             .doc("From Chef")
            //             .collection(widget.Foodname)
            //             .doc("INGREDIENT")
            //             .set(ingredient_data)
            //             .then((value) => print("sucesss"));
            //         print(widget.Foodname);
            //         Foodlist__Firebase_entry(FoodName: widget.Foodname);
            //         for (int i = 1; i <= widget.lastnumber; i++)
            //           print(ingredient_data[i.toString()]);
            //       } else {
            //         var db =
            //             FirebaseFirestore.instance.collection("From Chef");
            //         db
            //             .doc("From Chef")
            //             .collection(widget.Foodname)
            //             .doc("STEPS")
            //             .set(step_data)
            //             .then((value) => print("sucesss"));

            //         for (int i = 1; i <= widget.lastnumber; i++)
            //           print(step_data[i.toString()]);
            //       }
            //       //   for (int i = 1; i <= widget.lastnumber; i++)
            //       //     print(ingredient_data[i.toString()]);
            //     },
            //     child: Icon(Icons.done)),
          ],
        ),
      ),
    );
  }
}

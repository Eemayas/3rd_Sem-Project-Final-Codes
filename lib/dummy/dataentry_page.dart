import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';
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
  var selected_ingredient = '1';
  int no_ingredient = 1;
  var selected_step = '1';
  List<String> foodlist_data = [
    foodtype_name_list.br_Apple_jam,
    foodtype_name_list.br_Chocolate_Swiss_roll,
    foodtype_name_list.br_Easy_seafood_chowder,
    foodtype_name_list.br_Healthy_roast_dinner,
    foodtype_name_list.br_Vegan_apple_cake,
  ];
  //List<DropdownMenuItem<String>> fooodlist =dropdownfoodlist(foodlist_data);

  final Map<String, String> ingredient_data = {};
  List<DropdownMenuItem<String>> ingredient =
      dropdownlist(starting: 1, ending: 16);
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
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "datata");
                },
                child: Icon(
                  Icons.done,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SafeArea(
          child: Container(
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
                  Text(
                    dataentrypage_FOODTYPE,
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        // onChanged: (value) {
                        //   Foodname = value;
                        // },
                        style: TextStyle(),
                        textAlign: TextAlign.center,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: Center(child: Text(dataentrypage_FOODlist)),
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
                  Container(
                    height: 300,
                    child: ListView(
                      children: [
                        for (int i = 1;
                            i <= int.parse(selected_ingredient);
                            i++)
                          Box(
                              Category: "INGREDIENT",
                              number: i,
                              lastnumber: int.parse(selected_ingredient),
                              Foodname: dataentrypage_FOODlist),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'STEPS',
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    height: 400,
                    child: ListView(
                      children: [
                        for (int i = 1; i <= int.parse(selected_step); i++)
                          Box(
                              Category: "STEPS",
                              number: i,
                              lastnumber: int.parse(selected_step),
                              Foodname: dataentrypage_FOODlist),
                      ],
                    ),
                  )
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

List<DropdownMenuItem<String>> dropdownfoodlist(List<String> listtt) {
  List<DropdownMenuItem<String>> listt = [];
  for (var i = 0; i <= listtt.length; i++) {
    var item = DropdownMenuItem(
      child: Text(listtt[i]),
      value: listtt[i],
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
              TextButton(
                  onPressed: () {
                    if (widget.Category == "INGREDIENT") {
                      var db =
                          FirebaseFirestore.instance.collection("Datamealapp");
                      db
                          .doc(dataentrypage_FOODTYPE)
                          .collection(widget.Foodname)
                          .doc("INGREDIENT")
                          .set(ingreddddientt_manual)
                          .then((value) => print("sucesss"));
                      for (int i = 1; i <= widget.lastnumber; i++)
                        print(ingredient_data[i.toString()]);
                    } else {
                      var db =
                          FirebaseFirestore.instance.collection("Datamealapp");
                      db
                          .doc(dataentrypage_FOODTYPE)
                          .collection(widget.Foodname)
                          .doc("STEPS")
                          .set(step_data_manual)
                          .then((value) => print("sucesss"));

                      for (int i = 1; i <= widget.lastnumber; i++)
                        print(step_data[i.toString()]);
                    }
                    //   for (int i = 1; i <= widget.lastnumber; i++)
                    //     print(ingredient_data[i.toString()]);
                  },
                  child: Icon(Icons.done)),
          ],
        ),
      ),
    );
  }
}

class foodname extends StatefulWidget {
  const foodname({Key? key}) : super(key: key);

  @override
  State<foodname> createState() => _foodnameState();
}

class _foodnameState extends State<foodname> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          onChanged: (value) {},
          style: TextStyle(),
          textAlign: TextAlign.center,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Center(child: Text("FOODNAME")),
            labelStyle: TextStyle(),
          ),
        ),
      ),
    );
  }
}

String dataentrypage_FOODTYPE = foodtype_name_list.nGreek;
String dataentrypage_FOODlist =
    foodtype_name_list.gr_Feta_cakes_with_Greek_salad;

Map<String, String> ingreddddientt_manual = {
  "1": "a drop of rapeseed oil, for the baking sheet",
  "2": "700g potatoes, peeled and cut into chunks",
  "3": "1 lemon, zested, half juiced",
  "4": "6 spring onions, very finely chopped",
  "5": "2 tbsp chopped mint",
  "6": "3 tbsp chopped parsley",
  "7": "100g feta, crumbled",
  "8": "1 large egg",
  "9": "6 tbsp wholemeal flour",
  "10": "½ tsp smoked paprika",
  "11": "320g tomatoes, cut into wedges",
  "12": "1 cucumber (about 320g), diced",
  "13": "1 red onion finely chopped",
  "14": "12 Kalamata olives, quartered",
  "15": "1-2 tbsp finely chopped mint",
  "16": "2 tsp lemon juice",
  "17": "2 tsp extra virgin olive oil",
};

Map<String, String> step_data_manual = {
  "1":
      "Heat the oven to 200C/180C fan/gas 6 and oil a non-stick baking sheet. Bring a pan of water to the boil, add the potatoes and cook for 15-20 mins until tender. Drain very well, then return to the pan and mash with lots of black pepper, the lemon zest and juice, the spring onions, mint and 2 tbsp of the parsley. Stir through the feta.",
  "2":
      "Beat the egg in a shallow bowl, then mix the flour, paprika and remaining 1 tbsp parsley in another. Shape the potato mixture into eight cakes, then carefully coat all over in the egg, then the flour mix, reshaping them if you need to. Arrange the cakes on the baking sheet and bake for 15 mins until starting to turn golden. Use a palette knife to carefully turn each one over and bake for another 10-15 mins until golden.",
  "3":
      "Meanwhile, toss half the salad with half the lemon and oil. Serve with four cakes and chill the remainder for another day, tossing the remaining salad with the rest of the lemon and oil just before serving. Will keep, covered, for up to two days in the fridge. To reheat the cakes, cook on a baking tray at 200C/180C fan/gas 6 for 15-20 mins.",
};


//"1":"
//"2":"
//"3":"
//"4":"
//"5":"
//"6":"
//"7":"
//"8":"
//"9":"
//"10":"
//"11":"
//"12":"
//"13":"
//"14":"
//"15":"
//"16":"
//"17":"
//"18":"
//"19":"
//"20":"
//"21":"
//"22":"
//"23":"



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:image_from_firebase_public/constanst/constanst.dart';
// import '/constanst/foodname.dart';

// final Map<String, String> ingredient_data = {};
// final Map<String, String> step_data = {};

// class dataentrypage extends StatefulWidget {
//   const dataentrypage({Key? key}) : super(key: key);

//   @override
//   State<dataentrypage> createState() => _dataentrypageState();
// }

// class _dataentrypageState extends State<dataentrypage> {
//   final myController = TextEditingController();
//   @override
//   void dispose() {
//     myController.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   late String Foodname = 'meal';
//   var selected_ingredient = '1';
//   int no_ingredient = 1;
//   var selected_step = '1';
//   // List<String> foodlist_data = [
//   //   foodtype_name_list.br_Apple_jam,
//   //   foodtype_name_list.br_Chocolate_Swiss_roll,
//   //   foodtype_name_list.br_Easy_seafood_chowder,
//   //   foodtype_name_list.br_Healthy_roast_dinner,
//   //   foodtype_name_list.br_Vegan_apple_cake,
//   // ];
//   //List<DropdownMenuItem<String>> fooodlist =dropdownfoodlist(foodlist_data);

//   List<DropdownMenuItem<String>> ingredient =
//       dropdownlist(starting: 1, ending: 20);
//   List<DropdownMenuItem<String>> step = dropdownlist(starting: 1, ending: 16);

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kappbar_color,
//         actions: <Widget>[
//           Padding(
//               padding: EdgeInsets.only(right: 20.0),
//               child: GestureDetector(
//                 onTap: () {
//                   print("SDVsdv");
//                   print(myController.text);
//                   // Navigator.pop(context);
//                   // Navigator.pushNamed(context, "datata");
//                 },
//                 child: Icon(
//                   Icons.done,
//                   size: 26.0,
//                 ),
//               )),
//         ],
//       ),
//       body: SafeArea(
//           child: Container(
//         //decoration: apptheme_background,
//         child: ListView(
//           children: [
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 30),
//                 child: Column(children: [
//                   Text(
//                     'Data Entry',
//                     style: TextStyle(
//                       fontSize: 30,
//                     ),
//                   ),

//                   Padding(
//                     padding:
//                         const EdgeInsets.only(top: 20, left: 50, right: 50),
//                     child: Container(
//                       height: 60,
//                       width: MediaQuery.of(context).size.width,
//                       child: TextFormField(
//                         controller: myController,
//                         onChanged: (value) {
//                           Foodname = value;
//                           print(Foodname);
//                         },
//                         // onEditingComplete: () {
//                         //   Foodname = myController.text;
//                         //   print(Foodname);
//                         // },
//                         style: TextStyle(),
//                         textAlign: TextAlign.center,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           label: Center(child: Text("Food Name")),
//                           labelStyle: TextStyle(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         'INGREDIENT',
//                         style: TextStyle(fontSize: 15),
//                       ),
//                       DropdownButton<String>(
//                         icon: Icon(
//                           Icons.arrow_drop_down,
//                           color: Colors.black,
//                         ),
//                         dropdownColor: Colors.white,
//                         style: TextStyle(color: Colors.black),
//                         value: selected_ingredient,
//                         items: ingredient,
//                         onChanged: (String? newvalue) {
//                           setState(() {
//                             selected_ingredient = newvalue!;
//                             no_ingredient = int.parse(newvalue);
//                           });
//                         },
//                       ),
//                       Text(
//                         'STEPS',
//                         style: TextStyle(fontSize: 15),
//                       ),
//                       DropdownButton<String>(
//                         icon: Icon(
//                           Icons.arrow_drop_down,
//                           color: Colors.black,
//                         ),
//                         dropdownColor: Colors.white,
//                         style: TextStyle(color: Colors.black),
//                         value: selected_step,
//                         items: step,
//                         onChanged: (String? newvalue) {
//                           setState(() {
//                             selected_step = newvalue!;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                   Text(
//                     'INGREDIENT',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                   // Container(
//                   //   height: 300,
//                   //   child: ListView(
//                   //     children: [
//                   for (int i = 1; i <= int.parse(selected_ingredient); i++)
//                     Box(
//                         Category: "INGREDIENT",
//                         number: i,
//                         lastnumber: int.parse(selected_ingredient),
//                         Foodname: Foodname),
//                   //     ],
//                   //   ),
//                   // ),
//                   SizedBox(
//                     height: 100,
//                   ),
//                   Text(
//                     'STEPS',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                   // Container(
//                   //   height: 400,
//                   //   child: ListView(
//                   //   children: [
//                   for (int i = 1; i <= int.parse(selected_step); i++)
//                     Box(
//                         Category: "STEPS",
//                         number: i,
//                         lastnumber: int.parse(selected_step),
//                         Foodname: Foodname),
//                   //     ],
//                   //   ),
//                   // )
//                 ]),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

// List<DropdownMenuItem<String>> dropdownlist(
//     {required var starting, required var ending}) {
//   List<DropdownMenuItem<String>> listt = [];
//   for (var i = starting; i <= ending; i++) {
//     var item = DropdownMenuItem(
//       child: Text(i.toString()),
//       value: i.toString(),
//     );
//     listt.add(item);
//   }
//   return listt;
// }

// // List<DropdownMenuItem<String>> dropdownfoodlist(List<String> listtt) {
// //   List<DropdownMenuItem<String>> listt = [];
// //   for (var i = 0; i <= listtt.length; i++) {
// //     var item = DropdownMenuItem(
// //       child: Text(listtt[i]),
// //       value: listtt[i],
// //     );
// //     listt.add(item);
// //   }
// //   return listt;
// // }

// class Box extends StatefulWidget {
//   Box(
//       {required this.Category,
//       required this.number,
//       required this.lastnumber,
//       required this.Foodname});
//   final String Category;
//   final int number;
//   final int lastnumber;
//   final String Foodname;

//   @override
//   State<Box> createState() => _BoxState();
// }

// class _BoxState extends State<Box> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
//       child: Container(
//         //height: 60,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           children: [
//             Text(widget.number.toString()),
//             TextFormField(
//               onChanged: (value) {
//                 if (widget.Category == "INGREDIENT") {
//                   ingredient_data[widget.number.toString()] = value;
//                 } else {
//                   step_data[widget.number.toString()] = value;
//                 }
//               },
//               style: TextStyle(),
//               textAlign: TextAlign.center,
//               obscureText: false,
//               decoration: InputDecoration(
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//                 label: Center(child: Text(widget.Category)),
//                 labelStyle: TextStyle(),
//               ),
//             ),
//             if (widget.number == widget.lastnumber)
//               TextButton(
//                   onPressed: () {
//                     if (widget.Category == "INGREDIENT") {
//                       var db =
//                           FirebaseFirestore.instance.collection("From Chef");
//                       db
//                           .doc("From Chef")
//                           .collection(widget.Foodname)
//                           .doc("INGREDIENT")
//                           .set(ingredient_data)
//                           .then((value) => print("sucesss"));
//                       print(widget.Foodname);
//                       for (int i = 1; i <= widget.lastnumber; i++)
//                         print(ingredient_data[i.toString()]);
//                     } else {
//                       var db =
//                           FirebaseFirestore.instance.collection("From Chef");
//                       db
//                           .doc("From Chef")
//                           .collection(widget.Foodname)
//                           .doc("STEPS")
//                           .set(step_data)
//                           .then((value) => print("sucesss"));

//                       for (int i = 1; i <= widget.lastnumber; i++)
//                         print(step_data[i.toString()]);
//                     }
//                     //   for (int i = 1; i <= widget.lastnumber; i++)
//                     //     print(ingredient_data[i.toString()]);
//                   },
//                   child: Icon(Icons.done)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // class foodname extends StatefulWidget {
// //   const foodname({Key? key}) : super(key: key);

// //   @override
// //   State<foodname> createState() => _foodnameState();
// // }

// // class _foodnameState extends State<foodname> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
// //       child: Container(
// //         height: 60,
// //         width: MediaQuery.of(context).size.width,
// //         child: TextFormField(
// //           onChanged: (value) {},
// //           style: TextStyle(),
// //           textAlign: TextAlign.center,
// //           obscureText: false,
// //           decoration: InputDecoration(
// //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
// //             label: Center(child: Text("FOODNAME")),
// //             labelStyle: TextStyle(),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// String dataentrypage_FOODTYPE = foodtype_name_list.nMediterranean;
// //rember to change above foodtype after 5 time ffodlist
// String dataentrypage_FOODlist =
//     foodtype_name_list.md_Healthy_chicken_pasta_bake;

// Map<String, String> ingreddddientt_manual = {
//   "1": "300g wholemeal penne",
//   "2": "2 tsp olive oil",
//   "3": "2 peppers (we used 1 yellow and 1 orange), deseeded and chopped",
//   "4": "1 large courgette (160g), coarsely grated",
//   "5": "3 large garlic cloves, finely grated",
//   "6": "500g carton passata",
//   "7": "1 tbsp smoked paprika",
//   "8": "1½ tsp vegetable bouillon powder",
//   "9": "1 tsp chilli powder (optional)",
//   "10": "25g Kalamata olives (about 8), sliced",
//   "11": "400g chicken breasts (2 large), cut into pieces",
//   "12": "large handful of basil, chopped, plus extra to serve",
//   "13": "100g ricotta",
//   "14": "20g finely grated mature cheddar",
// };

// Map<String, String> step_data_manual = {
//   "1":
//       " Cook the pasta following pack instructions. Heat the oven to 180C/160C fan/gas 4.",
//   "2":
//       "Meanwhile, heat the oil in a large pan over a medium heat and fry the peppers for 8 mins, stirring until they start to soften. Add the courgette and garlic, stir for a few minutes more, then tip in the passata and stir in the smoked paprika, bouillon, chilli, if using, and olives. Simmer for 3-4 mins.",
//   "3":
//       "Drain the pasta, reserving the pasta water. Tip the pasta into the passata mixture along with the chicken, half a mug of the pasta water and the basil. Stir together well, then tip into baking dish.",
//   "4":
//       "Mix the ricotta in a bowl with 5 tbsp of the pasta water and spread across the top of the pasta. Sprinkle over the cheddar, then bake for 35 mins. Scatter with a few extra basil leaves, if you like, and serve.",
// };


// //"1":   "
// //"2":   "
// //"3":   "
// //"4":   "
// //"5":   "
// //"6":   "
// //"7":   "
// //"8":   "
// //"9":   "
// //"10":"
// //"11":"
// //"12":"
// //"13":"
// //"14":"
// //"15":"
// //"16":"
// //"17":"
// //"18":"
// //"19":"
// //"20":"
// //"21":"
// //"22":"
// //"23":"



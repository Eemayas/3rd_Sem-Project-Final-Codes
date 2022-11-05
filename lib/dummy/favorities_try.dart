import 'package:cloud_firestore/cloud_firestore.dart';

// List data_favorities = [];
// Map<String, dynamic> Favorities_List_generator(
//   String Foodtype_f_name,
//   String Foodlist_f_name,
// ) {
//   // Map<String, dynamic> data_map_favorities = FieldValue.arrayUnion([
//   //   {"Foodtype_f": Foodtype_f_name, "Foodlist_s": Foodlist_f_name}
//   // ]);
//   // return data_map_favorities;
//   return {
//     "fav": FieldValue.arrayUnion([
//       {"Foodtype_f": Foodtype_f_name, "Foodlist_s": Foodlist_f_name}
//     ])
//   };
// }

void Favorites_to_firebase(
  String _email,
  List<Map<String, dynamic>> DATA_List,
) {
  var db = FirebaseFirestore.instance.collection("User_detail");
  db
      .doc("ACCOUNTS")
      .collection(_email)
      .doc("Favorities")
      .set({}).then((value) => print("Favorities added sucesss"));
}

// void Detail_to_firebase(
//     String _email, String _name, String _ph_number, String _address)
// {
//   WorkPost.fromJson(Map<String, dynamic> json)
//       : _name = json['name'],
//        _ph_number = json['phoneNumber'],
//         _address = json['location'],

//         image = json['imageString'];

//   // Map<String, dynamic> toJson() => {
//   //       'name': _name,
//   //       'phoneNumber': phoneNumber,
//   //       'location': location,
//   //       'description': description,
//   //       'imageString': imageString,
//   //     };
// }

void firebase_entry({
  required String Foodtype_f_name,
  required String Foodlist_f_name,
  required String email,
}) {
  Map<String, dynamic> datatta = {
    "fav": FieldValue.arrayUnion([
      {"Foodtype_f": Foodtype_f_name, "Foodlist_s": Foodlist_f_name}
    ])
  };
  var db = FirebaseFirestore.instance.collection("FAVORITIES");
  db
      .doc("ACCOUNTS")
      .collection(email)
      .doc("Favorities")
      .update(datatta)
      .then((value) => print("Favorities added array sucesss"));
}

List data = [];
Future<List> retrivedata() async {
  List<dynamic> friendsList;
  final value = await FirebaseFirestore.instance
      .collection("FAVORITIES")
      .doc("ACCOUNTS")
      .collection("prashantmanandhar2002@gmail.com")
      .doc("Favorities")
      .get();
  friendsList = value.data()!["fav"];

  // FirebaseFirestore.instance
  //     .collection("FAVORITIES")
  //     .doc("ACCOUNTS")
  //     .collection("prashantmanandhar2002@gmail.com")
  //     .doc("Favorities")
  //     .get()
  //     .then((value) {
  //   friendsList = value.data()!["fav"];
  //   // data = friendsList;
  //print("1+${friendsList[1]['Foodlist_s']}");
  data = friendsList;

  //   // return friendsList;
  // print(friendsList);
  //});
  return friendsList;
}

void retrivedata1() async {
  Map tobesearch = {
    "Foodlist_s": "Maple & chilli-glazed leg of lamb",
    "Foodtype_f": "AMERICAN",
  };
  // List data2 = await data;
  List data2 = await retrivedata();
  print(data2.length);
  for (int i = 0; i < data2.length; i++) {
    print(await "$i+${data[i]['Foodlist_s']}");
    print(await "$i+${data[i]['Foodtype_f']}");
  }
}

void searchlist() async {
  // var result = data2.any((element) => element == tobesearch);
  Map tobesearch = {
    "Foodlist_s": "Maple & chilli-glazed leg of lamb",
    "Foodtype_f": "AMERICAN",
  };
  // List data2 = await data;
  List data2 = await retrivedata();
  print(data2.length);

  for (int i = 0; i < data2.length; i++) {
    print(data2[i]['Foodlist_s']);
    if ("Next level beef burgers" == data2[i]['Foodlist_s']) {
      print("trueeeeeeeeee");
    }
  }

  var result = data2.contains(tobesearch);
  print("result :$result");
}

void delete() {
  Map elementsToDelete = {};
  var db = FirebaseFirestore.instance.collection("FAVORITIES");
  db
      .doc("ACCOUNTS")
      .collection("manandharprashant888@gmail.com")
      .doc("Favorities")
      .update({
        "fav": FieldValue.arrayRemove([
          {
            "Foodtype_f": "AMERICAN",
            "Foodlist_s": "Maple & chilli-glazed leg of lamb",
            "ImgUrl":
                "https://images.immediate.co.uk/production/volatile/sites/30/2021/06/Maple-and-chilli-glazed-leg-of-lamb-e9fa707.jpg"
          }
        ]),
      })
      .then((value) => print("favorities delete sucesss"))
      .onError((error, stackTrace) => print(error));
}

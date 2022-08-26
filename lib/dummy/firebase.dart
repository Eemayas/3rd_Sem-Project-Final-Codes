import 'package:cloud_firestore/cloud_firestore.dart';

class firebase_entry {
  Map<String, String> ingredient = {
    '1': "Chicken Marinate",
    '2': '2 pcs chicken breast or thighs cut in small cubes',
    '3': '2 tsp garlic',
    '4': '3 tsp soya sauce',
    '5': '1/2 capful of shaohing wine',
    '6': '2 tsp oil',
    '7': 'Cornstarch before frying'
  };
  Map<String, String> steps = {
    "1":
        'Ready all ingredients as you marinate the chicken (30 mins) with 2tsp garlic, 3 tsp soya sauce, half a cap of shaoxing wine, and 1 tsp of oil. Cut those chilli in bits, add more chilli if you like it more spicy or remove some of the seeds if less spice. Add cornstarch to chicken before frying.',
    "2":
        'I picked searing this time since want to save some oil, feel free to deep fry those chicken cubes twice until crispy. Med high heat : Cook until golden brown and take out to drain oil',
    "3":
        'Pan with Abit oil med high heat add ginger, spring onions (or bell pepper since I don\'t have much spring onions left at home). Sear for a minute then change to HIGH HEAT add in chilli and peppercorn and sear until u smell the aroma. Add in those chicken together with salt and shaoxing wine. Stir until sauce evaporates. Taste test if ok serve on plate.',
    "4": "Sprinkle some seasame seed for garnish, serve hot. Done."
  };

  void Insert_in_subcollection() async {
    var db = FirebaseFirestore.instance.collection("Datamealapp");
    db
        .doc("Chinese")
        .collection("Chinese Stir Fry Spicy Chicken")
        .doc("STEPS")
        .set(steps)
        .then((value) => print("sucesss"));
  }
}

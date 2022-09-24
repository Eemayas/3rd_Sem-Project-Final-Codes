import 'package:image_from_firebase_public/Firebase/Favorities/Favorities_from_Firebase.dart';

import '../../dummy/favorities_try.dart';

Future<bool> Check_Favorities(
    {required String Foodlist_s, required String email}) async {
  int checkvar = 0;
  List data2 = await Favorities_from_Firebase(email: email);
  print(data2.length);

  for (int i = 0; i < data2.length; i++) {
    if (Foodlist_s == data2[i]['Foodlist_s']) {
      checkvar = 1;
    }
  }
  if (checkvar == 1) {
    return true;
  } else {
    return false;
  }
}

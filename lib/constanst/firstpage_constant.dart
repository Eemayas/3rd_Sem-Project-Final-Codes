import '/screen/listpage/chinese.dart';
import '/screen/listpage/french.dart';
import '/screen/listpage/italian.dart';
import '/screen/listpage/japnese.dart';
import '/screen/listpage/korean.dart';
import '/screen/listpage/subcontinental.dart';
import '/screen/listpage/thai.dart';
import '/screen/listpage/turkish.dart';

String kAppbar_title = 'foodtypes';
double? kSizedBox_height = 40;

class foodtype {
  final String ImgPath;
  final String name;
  final String nextpage;

  foodtype({required this.ImgPath, required this.name, required this.nextpage});
}

List foodtype_list = [
  foodtype(
      ImgPath: 'Foodtype/chinese.jpg', name: "CHINESE", nextpage: chinese.ID),
  foodtype(
      ImgPath: 'Foodtype/french.jpeg', name: "FRENCH", nextpage: french.ID),
  foodtype(
      ImgPath: 'Foodtype/italian.jpg', name: "ITALIAN", nextpage: italian.ID),
  foodtype(
      ImgPath: 'Foodtype/japanese.jfif',
      name: "JAPANESE",
      nextpage: japanese.ID),
  foodtype(ImgPath: 'Foodtype/korean.jpg', name: "KOREAN", nextpage: korean.ID),
  foodtype(
      ImgPath: 'Foodtype/subcontinental.jpg',
      name: "SUBCONTINENTAL",
      nextpage: subcontiental.ID),
  foodtype(ImgPath: 'Foodtype/thai.jpg', name: "THAI", nextpage: thai.ID),
  foodtype(
      ImgPath: 'Foodtype/turkish.jpg', name: "TURKISH", nextpage: turkish.ID),
];

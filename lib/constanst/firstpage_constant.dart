import '/screen/listpage/chinese.dart';
import '/screen/listpage/french.dart';
import '/screen/listpage/italian.dart';
import '/screen/listpage/japnese.dart';
import '/screen/listpage/korean.dart';
import '/screen/listpage/subcontinental.dart';
import '/screen/listpage/thai.dart';
import '/screen/listpage/turkish.dart';
import 'foodname.dart';

String kAppbar_title = 'foodtypes';
double? kSizedBox_height = 40;

class foodtype {
  //final String ImgPath;
  final String name;
  final String nextpage;

  foodtype(
      { //required this.ImgPath ,
      required this.name,
      required this.nextpage});
}

List foodtype_list = [
  foodtype(name: foodtype_name_list.nAmerican, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nBritish, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nCaribbean, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nChinese, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nFrench, nextpage: french.ID),
  foodtype(name: foodtype_name_list.nGreek, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nIndian, nextpage: chinese.ID),
  foodtype(name: foodtype_name_list.nItalian, nextpage: italian.ID),
  foodtype(name: foodtype_name_list.nJapnese, nextpage: japanese.ID),
];

Map<String, String> imageeurl = {
  foodtype_list[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Salt-beef-sandwich-7958446.jpg',
  foodtype_list[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/01/Seafood-chowder-ae0e512.jpg',
  foodtype_list[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Curry-prawns-2ace99e.jpg',
  foodtype_list[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
  foodtype_list[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/10/Pain-au-chocolat-tear-and-share-f601b77.jpg',
  foodtype_list[5].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Open-Greek-style-salad-sandwiches-b074b6c.jpg',
  foodtype_list[6].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Ajwain-puri-944b3ee.jpg',
  foodtype_list[7].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Tomato-and-nduja-bruschetta-e1321b0.jpg',
  foodtype_list[8].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/08/Matcha-tofu-ice-cream-6c3335f.jpg',
};
















































































// List foodtype_list = [
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "AMERICAN",
//       nextpage: chinese.ID),
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "BRITISH",
//       nextpage: chinese.ID),
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "CARIBBEAN",
//       nextpage: chinese.ID),
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "CHINESE",
//       nextpage: chinese.ID),
//   foodtype(
//       //  ImgPath: 'Foodtype/french.jpeg',
//       name: "FRENCH",
//       nextpage: french.ID),
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "GREEK",
//       nextpage: chinese.ID),
//   foodtype(
//       // ImgPath:
//       //     'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       name: "INDIAN",
//       nextpage: chinese.ID),
//   foodtype(
//       //ImgPath: 'Foodtype/italian.jpg',
//       name: "ITALIAN",
//       nextpage: italian.ID),
//   foodtype(
//       //ImgPath: 'Foodtype/japanese.jfif',
//       name: "JAPANESE",
//       nextpage: japanese.ID),
//   // foodtype(
//   //     //ImgPath: 'Foodtype/korean.jpg',
//   //     name: "KOREAN",
//   //     nextpage: korean.ID),
//   // foodtype(
//   //     //ImgPath: 'Foodtype/subcontinental.jpg',
//   //     name: "SUBCONTINENTAL",
//   //     nextpage: subcontiental.ID),
//   // foodtype(
//   //     //ImgPath: 'Foodtype/thai.jpg',
//   //     name: "THAI",
//   //     nextpage: thai.ID),
//   // foodtype(
//   //     //ImgPath: 'Foodtype/turkish.jpg',
//   //     name: "TURKISH",
//   //     nextpage: turkish.ID),
// ];
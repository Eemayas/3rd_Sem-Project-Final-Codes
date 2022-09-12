import 'foodname.dart';

class Food {
  // final String imagePath;
  //final String nextpage;
  final String name;

  Food(
    this.name,

    // this.nextpage,

    //this.imagePath,
  );
}

List Foodlist_AMERICAN = [
  Food(foodtype_name_list.am_Chimichurristyle_steaksarnies),
  Food(foodtype_name_list.am_Maple_chilli_glazed_leg_of_lamb),
  Food(foodtype_name_list.am_Next_level_beef_burgers),
  Food(foodtype_name_list.am_Pastramistyle_steak),
  Food(foodtype_name_list.am_Simple_salt_beef),
];

Map<String, String> AMERICAN_imageeurl = {
  Foodlist_AMERICAN[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/03/Chimichurri-style-steak-sarnies-with-spicy-fries-007858d.jpg',
  Foodlist_AMERICAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/06/Maple-and-chilli-glazed-leg-of-lamb-e9fa707.jpg',
  Foodlist_AMERICAN[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/05/Next-level-burger-13791ff.jpg',
  Foodlist_AMERICAN[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/03/Pastrami-style-steak-and-mustard-mayo-9179873.jpg',
  Foodlist_AMERICAN[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Salt-beef-sandwich-7958446.jpg',
};

List Foodlist_BRITISH = [
  Food(foodtype_name_list.br_Apple_jam),
  Food(foodtype_name_list.br_Chocolate_Swiss_roll),
  Food(foodtype_name_list.br_Easy_seafood_chowder),
  Food(foodtype_name_list.br_Healthy_roast_dinner),
  Food(foodtype_name_list.br_Vegan_apple_cake),
];

Map<String, String> BRITISH_imageeurl = {
  Foodlist_BRITISH[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/07/Apple-Jam-01e8e4b.jpg',
  Foodlist_BRITISH[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/07/Chocolate-Swiss-Roll-e800e06.jpg',
  Foodlist_BRITISH[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/01/Seafood-chowder-ae0e512.jpg',
  Foodlist_BRITISH[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Healthy-roast-dinner-8757ce1.jpg',
  Foodlist_BRITISH[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/07/Vegan-apple-cake-c466e14.jpg',
};

List Foodlist_CARIBBEAN = [
  Food(foodtype_name_list.ca_Caribbean_beef_patties),
  Food(foodtype_name_list.ca_Curried_goat),
  Food(foodtype_name_list.ca_Curry_prawns),
  Food(foodtype_name_list.ca_Jerk_pulled_pork_with_banana_salsa),
  Food(foodtype_name_list.ca_Sticky_jerk_salmon_with_mango_slaw),
];

Map<String, String> CARIBBEAN_imageeurl = {
  Foodlist_CARIBBEAN[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/caribbean-beef-patties.jpg',
  Foodlist_CARIBBEAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/Curried-goat-e57d927.jpg',
  Foodlist_CARIBBEAN[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Curry-prawns-2ace99e.jpg',
  Foodlist_CARIBBEAN[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/pulled-pork.jpg',
  Foodlist_CARIBBEAN[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/salmon_8.jpg',
};

List Foodlist_CHINESE = [
  Food(foodtype_name_list.cn_Easy_beef_in_black_bean_sauce),
  Food(foodtype_name_list.cn_Fried_prawns_with_garlicky_hot_pepper_sauce),
  Food(foodtype_name_list.cn_Healthy_beef_chow_mein),
  Food(foodtype_name_list.cn_Noodles_with_crispy_chilli_oil_eggs),
  Food(foodtype_name_list.cn_Sticky_rib_hot_pot),
];

Map<String, String> CHINESE_imageeurl = {
  Foodlist_CHINESE[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/03/beef-in-black-bean-sauce.jpg',
  Foodlist_CHINESE[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Garlicky-prawns-6722e82.jpg',
  Foodlist_CHINESE[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
  Foodlist_CHINESE[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/12/Noodles-with-chilli-oil-eggs-6ec34e9.jpg',
  Foodlist_CHINESE[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/09/Sticky-Rib-Hot-Pot-663451b.jpg',
};

List Foodlist_FRENCH = [
  Food(foodtype_name_list.fr_Allotment_salad),
  Food(foodtype_name_list.fr_Beignets),
  Food(foodtype_name_list.fr_Chinon_apple_tarts),
  Food(foodtype_name_list.fr_Lighter_Cassoulet),
  Food(foodtype_name_list.fr_Mocha_madeleines),
];

Map<String, String> FRENCH_imageeurl = {
  Foodlist_FRENCH[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/04/allotment-salad.jpg',
  Foodlist_FRENCH[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/10/Beignet-722b321.jpg',
  Foodlist_FRENCH[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/chinon-apple-tarts.jpg',
  Foodlist_FRENCH[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/lighter-cassoulet.jpg',
  Foodlist_FRENCH[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/01/mocha-madeleine.jpg',
};

List Foodlist_GREEK = [
  Food(foodtype_name_list.gr_Feta_cakes_with_Greek_salad),
  Food(foodtype_name_list.gr_Greek_bouyiourdi),
  Food(foodtype_name_list.gr_Greek_feta_traybake),
  Food(foodtype_name_list.gr_Spinach_filo_spiral_pie),
  Food(foodtype_name_list.gr_Vegetarian_pastitsio),
];

Map<String, String> GREEK_imageeurl = {
  Foodlist_GREEK[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/05/Feta-cakes-with-greek-salad-e4ca1a4.jpg',
  Foodlist_GREEK[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/05/greek-bouiyourdi.jpg',
  Foodlist_GREEK[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/03/feta_traybake.jpg',
  Foodlist_GREEK[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/03/Spinach-filo-spiral-pie-3d77d2c.jpg',
  Foodlist_GREEK[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/05/Vegetarian-pastitsio-b35e6e0.jpg',
};

List Foodlist_INDIAN = [
  Food(foodtype_name_list.in_Ajwain_puri),
  Food(foodtype_name_list.in_Boondi_laddu),
  Food(foodtype_name_list.in_Grilled_paneer_wraps_kathi_paneer_rolls),
  Food(foodtype_name_list.in_Kalakand),
  Food(foodtype_name_list.in_Shahi_tukda),
];

Map<String, String> INDIAN_imageeurl = {
  Foodlist_INDIAN[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Ajwain-puri-944b3ee.jpg',
  Foodlist_INDIAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Boondi-laddu-8d7f734.jpg',
  Foodlist_INDIAN[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Grilled-paneer-wraps-338b496.jpg',
  Foodlist_INDIAN[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Kalakand-2203445.jpg',
  Foodlist_INDIAN[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Shahi-tukda-4588a3a.jpg',
};

List Foodlist_ITALIAN = [
  Food(foodtype_name_list.it_Arrabbiata_sauce),
  Food(foodtype_name_list.it_Easy_pesto),
  Food(foodtype_name_list.it_Malfatti),
  Food(foodtype_name_list.it_Meatball_minestrone_with_pesto), //
  Food(foodtype_name_list.it_Red_pesto),
];

Map<String, String> ITALIAN_imageeurl = {
  Foodlist_ITALIAN[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Arabbiata-Sauce-05a30bc.jpg',
  Foodlist_ITALIAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/perfect-pesto-feb1d6d.jpg',
  Foodlist_ITALIAN[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/03/Malfatti-87897d2.jpg',
  Foodlist_ITALIAN[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/pulled-pork.jpg', //
  Foodlist_ITALIAN[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/Red-Pesto-6061611.jpg',
};

List Foodlist_JAPANESES = [
  Food(foodtype_name_list.jp_Furikake_devilled_eggs),
  Food(foodtype_name_list.jp_Matcha_mochi_ice_cream),
  Food(foodtype_name_list.jp_Perfect_sushi_rice),
  Food(foodtype_name_list.jp_Vegan_katsu_curry),
  Food(foodtype_name_list.jp_Wasabi_chicken_rice_salad),
];

Map<String, String> JAPANESES_imageeurl = {
  Foodlist_JAPANESES[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/12/devilled-eggs.jpg',
  Foodlist_JAPANESES[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/08/Matcha-tofu-ice-cream-6c3335f.jpg',
  Foodlist_JAPANESES[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/05/sushi_rice-223f626.jpg',
  Foodlist_JAPANESES[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/04/tofyu_katsu_curry.jpg',
  Foodlist_JAPANESES[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/01/wasabi-chicken-rice-salad.jpg',
};

List Foodlist_MEDITERRANEAN = [
  Food(foodtype_name_list.md_Hummus_snack_packs),
  Food(foodtype_name_list.md_Healthy_chicken_pasta_bake),
  Food(foodtype_name_list.md_Falafel_lunchbox),
  Food(foodtype_name_list.md_Sabich),
  Food(foodtype_name_list.md_Spinach_filo_spiral_pie),
];

Map<String, String> MEDITERRANEAN_imageeurl = {
  Foodlist_MEDITERRANEAN[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/05/Hummus-snack-packs-626073e.jpg',
  Foodlist_MEDITERRANEAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/11/Healthy-chicken-pasta-bake-8c8fa07.jpg',
  Foodlist_MEDITERRANEAN[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/03/Spinach-filo-spiral-pie-3d77d2c.jpg',
  Foodlist_MEDITERRANEAN[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/07/sabich.jpg',
  Foodlist_MEDITERRANEAN[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/05/falafel-lunch-box.jpg',
};

List Foodlist_MEXICAN = [
  Food(foodtype_name_list.mx_Cabbage_roll_enchiladas),
  Food(foodtype_name_list.mx_Chicken_enchilada_wraps),
  Food(foodtype_name_list.mx_Mexican_hot_chocolate),
  Food(foodtype_name_list.mx_Spicy_beef_taco_bowl),
  Food(foodtype_name_list.mx_Spicy_rice_burritos),
];

Map<String, String> MEXICAN_imageeurl = {
  Foodlist_MEXICAN[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/01/Cabbage-roll-enchiladas-7e99061.jpg',
  Foodlist_MEXICAN[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/05/chicken-enchilada-wraps-6d81ed6.jpg',
  Foodlist_MEXICAN[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Mexican-hot-chocolate-98d2c8c.jpg',
  Foodlist_MEXICAN[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/spicy-beef-taco-2cd04fc.jpg',
  Foodlist_MEXICAN[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/05/RS_GFO-0621-HealthyDietPlan-Recipes-Suppers-SpicyRiceBurritos_02923-fc65693.jpg',
};

List Foodlist_MOROCCO = [
  Food(foodtype_name_list.mr_Harira),
  Food(foodtype_name_list.mr_Moroccan_sausage_stew),
  Food(foodtype_name_list.mr_Spiced_chicken_hotpot),
  Food(foodtype_name_list.mr_Spicy_Moroccan_eggs),
  Food(foodtype_name_list.mr_Stuffed_Moroccan_pitta),
];

Map<String, String> MOROCCO_imageeurl = {
  Foodlist_MOROCCO[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Harira-0ad84c9.jpg',
  Foodlist_MOROCCO[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/sausages_1.jpg',
  Foodlist_MOROCCO[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/07/One-pan-hotpot-f85e19e.jpg',
  Foodlist_MOROCCO[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/moroccan-eggs.jpg',
  Foodlist_MOROCCO[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/pitta.jpg',
};

List Foodlist_MIDDLEEAST = [
  Food(foodtype_name_list.me_Fatteh_makdous),
  Food(foodtype_name_list.me_Meze_meatballs),
  Food(foodtype_name_list.me_Muhammara),
  Food(foodtype_name_list.me_Vegan_kebabs),
  Food(foodtype_name_list.me_One_pan_lamb_tagine),
];

Map<String, String> MIDDLEEAST_imageeurl = {
  Foodlist_MIDDLEEAST[0].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/08/Fatteh-makdous-66ab5b9.jpg',
  Foodlist_MIDDLEEAST[1].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/01/Meze-meatballs-9509fc5.jpg',
  Foodlist_MIDDLEEAST[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2021/08/Muhammara-79bf27b.jpg',
  Foodlist_MIDDLEEAST[3].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/Vegan-kebabs-3322e41.jpg',
  Foodlist_MIDDLEEAST[4].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/tagine-ff6dcc0.jpg',
};
List Foodlist_SPANSIH = [
  Food(foodtype_name_list.sp_Easiest_ever_paella),
  Food(foodtype_name_list.sp_Paella_mixta),
  Food(foodtype_name_list.sp_Spanish_chicken_pie),
  Food(foodtype_name_list.sp_Spanish_seafood_rice),
  Food(foodtype_name_list.sp_Spiced_tortilla),
];

Map<String, String> SPANISH_imageeurl = {
  Foodlist_SPANSIH[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--1259716_8.jpg',
  Foodlist_SPANSIH[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/05/paella.jpg',
  Foodlist_SPANSIH[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--1035696_10.jpg',
  Foodlist_SPANSIH[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--218528_10.jpg',
  Foodlist_SPANSIH[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--10375_11.jpg',
};

List Foodlist_VIETNAMESE = [
  Food(foodtype_name_list.vi_Barbecue_pork_buns),
  Food(foodtype_name_list.vi_Vietnamese_egg_coffee),
  Food(foodtype_name_list.vi_Vietnamese_pork_peanu_burgers),
  Food(foodtype_name_list.vi_Vietnamese_porkvsalad),
  Food(foodtype_name_list.vi_Vietnamese_style_caramel_pork),
];

Map<String, String> VIETNAMESE_imageeurl = {
  Foodlist_VIETNAMESE[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--646454_11.jpg',
  Foodlist_VIETNAMESE[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2016/08/vietnamese-egg-coffee.jpg',
  Foodlist_VIETNAMESE[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/vietnamese-pork-peanut-burgers.jpg',
  Foodlist_VIETNAMESE[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--4957_11.jpg',
  Foodlist_VIETNAMESE[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/vietnamese-caramel-pork.jpg',
};

List Foodlist_TURKISH = [
  Food(foodtype_name_list.tu_DIY_kofta_burgers),
  Food(foodtype_name_list.tu_Pistachio_katmer),
  Food(foodtype_name_list.tu_Simit_bread),
  Food(foodtype_name_list.tu_Smoked_aubergine_pure),
  Food(foodtype_name_list.tu_Sweet_potato_salad),
];

Map<String, String> TURKISH_imageeurl = {
  Foodlist_TURKISH[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--424790_11.jpg',
  Foodlist_TURKISH[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/04/pistachio-katmer.jpg',
  Foodlist_TURKISH[2].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/01/simit-bread.jpg',
  Foodlist_TURKISH[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--1039_11.jpg',
  Foodlist_TURKISH[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe_images/recipe-image-legacy-id--1201823_11.jpg',
};

List Foodlist_THAI = [
  Food(foodtype_name_list.th_Cheats_sausage_larb),
  Food(foodtype_name_list.th_Chicken_pad_Thai),
  Food(foodtype_name_list.th_Golden_new_potato_pea_curry),
  Food(foodtype_name_list.th_Next_level_pad_Thai),
  Food(foodtype_name_list.th_Thai_green_tofu_noodles),
];

Map<String, String> THAI_imageeurl = {
  Foodlist_THAI[0].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/10/cheats-sausage-larb.jpg',
  Foodlist_THAI[1].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/07/chicken-pad-thai.jpg',
  Foodlist_THAI[2].name:
      'https://images.immediate.co.uk/production/volatile/sites/30/2022/03/Golden-new-potato-and-pea-curry-aecd13f.jpg',
  Foodlist_THAI[3].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/04/pad-thai.jpg',
  Foodlist_THAI[4].name:
      'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/03/thai-green-tofu-noodles.jpg',
};

// List Foodlist_CHINESE = [
//   Food(
//       // 'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//       "Chinese Babyberries Myrica rubra"),
//   Food("Chinese Babyberries Myrica rubra"),
//   Food('Foodlist/Chinese/Chinese Bayberries Myrica rubra.jpg'),
//   //     "Chinese Babyberries Myrica rubra"),
//   // Food('Foodlist/Chinese/Chinese Bayberries Myrica rubra.jpg',
//   //     "Chinese Babyberries Myrica rubra"),
//   // Food(
//   //     'Foodlist/Chinese/Chinese Beancurd, Ginkgo Nuts, and Barley Sweet Soup Dessert.jpg',
//   //     "Chinese Beancurd, Gingko Nuts, and Barley Sweet Soup Dessert"),
//   // Food('Foodlist/Chinese/Chinese Stir Fry Spicy Chicken.jpg',
//   //     "Chinese Stir Fry Spicy Chicken"),
//   // Food('Foodlist/Chinese/Chinese Sweet and Sour Pork.jpg',
//   //     "Chinese Sweet and Sour Pork"),
//   // Food('Foodlist/Chinese/Chinese Bayberries Myrica rubra.jpg',
//   //     "Chinese Bayberries Myrica rubra"),
// ];

// Map<String, String> CHINESE_imageeurl = {
//   Foodlist_CHINESE[0].name:
//       'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg',
//   Foodlist_CHINESE[1].name:
//       'https://images.immediate.co.uk/production/volatile/sites/30/2022/02/Beef-chow-mein-e16180c.jpg'
// };
// List Foodlist_FRENCH = [
//   // Food('Foodlist/French/Beef Bourguignon with Egg Fettuccine.jpg',
//   //     "Beef Bourguignon with Egg Fettuccine"),
//   // Food('Foodlist/French/Canelés.jpg', "Canelés"),
//   // Food('Foodlist/French/Choux pastry for eclairs, chouquettes or gougeres.jpg',
//   //     "Choux pastry for eclairs, chouquettes or gougeres"),
//   // Food('Foodlist/French/Creme Brulee.jpg', "Creme Brulee"),
//   // Food('Foodlist/French/French Onion Soup.jpg', "French Onion Soup"),
// ];
// List Foodlist_ITALIAN = [
//   // Food('Foodlist/Italian/Caprese.jpg', "Caprese"),
//   // Food('Foodlist/Italian/Lentil, spinach _ mushroom veggie lasagne.jpg',
//   //     "Lentil, spinach & mushroom veggie lasagne"),
//   // Food('Foodlist/Italian/Pasta with wild asparagus and pancetta.jpg',
//   //     "Pasta with wild asparagus and pancetta"),
//   // Food('Foodlist/Italian/Pumpkin risotto.jpg', "Pumpkin risotto"),
//   // Food('Foodlist/Italian/Spaghetti in bolognese sauce.jpg',
//   //     "Spaghetti in bolognese sauce"),
// ];
// List Foodlist_JAPANESES = [
//   // Food('Foodlist/Japanese/japanese.jfif', "JAPANESE"),
//   // Food(
//   //     'Foodlist/Japanese/Chicken Omurice - the old classic Japanese comfort meal, chicken kitchup rice with omlette.jpg',
//   //     "JAPNEChicken Omurice - the old classic Japanese comfort meal, chicken kitchup rice with omletteSES"),
//   // Food('Foodlist/Japanese/Gyoza aka Japanese dumplings.jpg',
//   //     "Gyoza aka Japanese dumplings"),
//   // Food('Foodlist/Japanese/Japanese Beef bowl.jpg', "Japanese Beef bowl"),
//   // Food('Foodlist/Japanese/Japanese Yakisoba.jpg', "Japanese Yakisoba"),
//   // Food('Foodlist/Japanese/Yakitori.jpg', "Yakitori"),
// ];
List Foodlist_KOREAN = [
  // Food('Foodlist/Korean/Yangnyeom chicken _ Korean spicy chicken.jpg',
  //     "Yangnyeom chicken : Korean spicy chicken"),
  // Food('Foodlist/Korean/Veggie Bibimbap.jpg', "Veggie Bibimbap"),
  // Food('Foodlist/Korean/Toppogi (Spicy Korean mochi soup).jpg',
  //     "Toppogi (Spicy Korean mochi soup)"),
  // Food('Foodlist/Korean/Korean Kimchi.jpg', "Korean Kimchi"),
  // Food('Foodlist/Korean/Dalgona coffee cream dessert.jpg',
  //     "Dalgona coffee cream dessert"),
];
List Foodlist_SUBCONTINENTAL = [
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
  // Food('Foodlist/Subcontinental/subcontinental.jpg', "SUBCONTINENTAL"),
];
// List Foodlist_THAI = [
  // Food('Foodlist/Thai/Thai Yellow Curry With Lamb.jpg',
  //     "Thai Yellow Curry With Lamb"),
  // Food(
  //     'Foodlist/Thai/Thai style Stir-fried rice noodles with chicken and sausages.jpg',
  //     "Thai style Stir-fried rice noodles with chicken and sausages"),
  // Food('Foodlist/Thai/Thai style pork rice bowl.jpg',
  //     "Thai style pork rice bowl"),
  // Food('Foodlist/Thai/Thai tuna salad.jpg', "Thai tuna salad"),
  // Food('Foodlist/Thai/Tom Yum canned Makerel in tomato sauce soup.jpg',
  //     "Tom Yum canned Makerel in tomato sauce soup"),
// ];
//List Foodlist_TURKISH = [
  // Food('Foodlist/Turkish/turkish.jpg', "TURKISH"),
  // Food('Foodlist/Turkish/turkish.jpg', "TURKISH"),
  // Food('Foodlist/Turkish/turkish.jpg', "TURKISH"),
  // Food('Foodlist/Turkish/turkish.jpg', "TURKISH"),
// ];

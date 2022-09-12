import 'package:flutter/material.dart';

class foodtype_name_list extends StatelessWidget {
  static String nAmerican = "AMERICAN";
  static String nBritish = "BRITISH";
  static String nCaribbean = "CARIBBEAN";
  static String nChinese = "CHINESE";
  static String nFrench = "FRENCH";
  static String nGreek = "GREEK";
  static String nIndian = "INDIAN";
  static String nItalian = "ITALIAN";
  static String nJapnese = "JAPANESE";
  static String nMediterranean = "MEDITERRANEN";
  static String nMexican = "MEXICAN";
  static String nMorccan = "MOROCCAN";
  static String nSpanish = "SPANISH";
  static String nThai = "THAI";
  static String nVietnamese = "VIETNAMESE";
  static String nMiddle_Eastern = "MIDDLE EASTERN";
  static String nTurkish = "TURKISH";

  static String am_Simple_salt_beef = "Simple salt beef";
  static String am_Maple_chilli_glazed_leg_of_lamb =
      "Maple & chilli-glazed leg of lamb";
  static String am_Next_level_beef_burgers = "Next level beef burgers";
  static String am_Chimichurristyle_steaksarnies =
      "Chimichurri-style steak sarnies & cheat’s spicy fries";
  static String am_Pastramistyle_steak = "Pastrami-style steak & mustard mayo";

  static String br_Easy_seafood_chowder = "Easy seafood chowder";
  static String br_Healthy_roast_dinner = "Healthy roast dinner";
  static String br_Chocolate_Swiss_roll = "Chocolate Swiss roll";
  static String br_Apple_jam = "Apple jam";
  static String br_Vegan_apple_cake = "Vegan apple cake";

  static String ca_Curry_prawns = "Curry prawns";
  static String ca_Curried_goat = "Curried goat";
  static String ca_Jerk_pulled_pork_with_banana_salsa =
      "Jerk pulled pork with banana salsa";
  static String ca_Caribbean_beef_patties = "Caribbean beef patties";
  static String ca_Sticky_jerk_salmon_with_mango_slaw =
      "Sticky jerk salmon with mango slaw";

  static String cn_Healthy_beef_chow_mein = "Healthy beef chow mein";
  static String cn_Fried_prawns_with_garlicky_hot_pepper_sauce =
      "Fried prawns with garlicky hot pepper sauce";
  static String cn_Easy_beef_in_black_bean_sauce =
      "Easy beef in black bean sauce";
  static String cn_Noodles_with_crispy_chilli_oil_eggs =
      "Noodles with crispy chilli oil eggs";
  static String cn_Sticky_rib_hot_pot = "Sticky rib hot pot";

  static String fr_Beignets = "Beignets";
  static String fr_Allotment_salad = "Allotment salad";
  static String fr_Mocha_madeleines = "Mocha madeleines";
  static String fr_Lighter_Cassoulet = "Lighter Cassoulet";
  static String fr_Chinon_apple_tarts = "Chinon apple tarts";

  static String gr_Vegetarian_pastitsio = "Vegetarian pastitsio";
  static String gr_Feta_cakes_with_Greek_salad = "Feta cakes with Greek salad";
  static String gr_Spinach_filo_spiral_pie = "Spinach filo spiral pie";
  static String gr_Greek_bouyiourdi = "Greek bouyiourdi";
  static String gr_Greek_feta_traybake = "Greek feta traybake";

  static String in_Ajwain_puri = "Ajwain puri";
  static String in_Grilled_paneer_wraps_kathi_paneer_rolls =
      "Grilled paneer wraps (kathi paneer rolls)";
  static String in_Shahi_tukda = "Shahi tukda";
  static String in_Kalakand = "Kalakand";
  static String in_Boondi_laddu = "Boondi laddu";

  static String it_Arrabbiata_sauce = "Arrabbiata sauce";
  static String it_Red_pesto = "Red pesto";
  static String it_Easy_pesto = "Easy pesto";
  static String it_Meatball_minestrone_with_pesto =
      "Meatball minestrone with pesto";
  static String it_Malfatti = "Malfatti";

  static String jp_Matcha_mochi_ice_cream = "Matcha mochi ice cream";
  static String jp_Perfect_sushi_rice = "Perfect sushi rice";
  static String jp_Vegan_katsu_curry = "Vegan katsu curry";
  static String jp_Wasabi_chicken_rice_salad = "Wasabi chicken rice salad";
  static String jp_Furikake_devilled_eggs = "Furikake devilled eggs";

  static String md_Hummus_snack_packs = "Hummus snack packs";
  static String md_Healthy_chicken_pasta_bake = "Healthy chicken pasta bake";
  static String md_Spinach_filo_spiral_pie = "Spinach filo spiral pie";
  static String md_Sabich = "Sabich";
  static String md_Falafel_lunchbox = "Falafel lunchbox";

  static String mx_Spicy_beef_taco_bowl = "Spicy beef taco bowl";
  static String mx_Mexican_hot_chocolate = "Mexican hot chocolate";
  static String mx_Chicken_enchilada_wraps = "Chicken enchilada wraps";
  static String mx_Spicy_rice_burritos = "Spicy rice burritos";
  static String mx_Cabbage_roll_enchiladas = "Cabbage roll enchiladas";

  static String mr_Spiced_chicken_hotpot = "Spiced chicken hotpot";
  static String mr_Harira = "Harira";
  static String mr_Moroccan_sausage_stew = "Moroccan sausage stew";
  static String mr_Stuffed_Moroccan_pitta = "Stuffed Moroccan pitta";
  static String mr_Spicy_Moroccan_eggs = "Spicy Moroccan eggs";

  static String sp_Paella_mixta = "Paella mixta";
  static String sp_Easiest_ever_paella = "Easiest ever paella";
  static String sp_Spanish_chicken_pie = "Spanish chicken pie";
  static String sp_Spanish_seafood_rice = "Spanish seafood rice";
  static String sp_Spiced_tortilla = "Spiced tortilla";

  static String th_Golden_new_potato_pea_curry =
      "Golden new potato & pea curry";
  static String th_Chicken_pad_Thai = "Chicken pad Thai";
  static String th_Thai_green_tofu_noodles = "Thai green tofu noodles";
  static String th_Cheats_sausage_larb = "Cheat’s sausage larb";
  static String th_Next_level_pad_Thai = "Next level pad Thai";

  static String tu_Pistachio_katmer = "Pistachio katmer";
  static String tu_Simit_bread = "Simit bread";
  static String tu_DIY_kofta_burgers = "DIY kofta burgers";
  static String tu_Sweet_potato_salad = "Sweet potato salad";
  static String tu_Smoked_aubergine_pure = "Smoked aubergine purée";

  static String vi_Vietnamese_egg_coffee = "Vietnamese egg coffee";
  static String vi_Vietnamese_pork_peanu_burgers =
      "Vietnamese pork & peanut burgers";
  static String vi_Vietnamese_style_caramel_pork =
      "Vietnamese-style caramel pork";
  static String vi_Vietnamese_porkvsalad = "Vietnamese pork salad";
  static String vi_Barbecue_pork_buns = "Barbecue pork buns";

  static String me_One_pan_lamb_tagine = "One-pan lamb tagine with chickpeas";
  static String me_Vegan_kebabs = "Vegan kebabs";
  static String me_Meze_meatballs = "Meze meatballs";
  static String me_Fatteh_makdous = "Fatteh makdous";
  static String me_Muhammara = "Muhammara ";

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

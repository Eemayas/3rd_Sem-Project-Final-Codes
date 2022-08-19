import 'package:flutter/material.dart';

import '../../component/photorecevier.dart';
import '../../constanst/constanst.dart';

class tryy extends StatelessWidget {
  tryy({required this.foodname});
  final String foodname;
  static String ID = "try";
  static const List<Widget> _views = [
    const Center(child: const Text('Content of Tab One')),
    const Center(child: const Text('Content of Tab Two')),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            child: ListView(
              children: [
                recipepage_photo(foodname: foodname),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: tabbar(),
                ),
                Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height / 2,
                  child: TabBarView(
                    children: [
                      const Center(child: const Text('Content of Tab One')),
                      const Center(child: const Text('Content of Tab Two')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: TabBar(tabs: [
        Tab(text: "INGREDIENT"),
        Tab(text: "STEPS"),
      ]),
    );
  }
}

class recipepage_photo extends StatelessWidget {
  const recipepage_photo({
    Key? key,
    required this.foodname,
  }) : super(key: key);

  final String foodname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            photoviewer_recipee('Foodlist/Chinese/chinese.jpg'),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: Text(
                  foodname,
                  style: TextStyle(
                      fontSize: 36, backgroundColor: Colors.grey.shade300),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}

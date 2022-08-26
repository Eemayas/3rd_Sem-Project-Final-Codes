import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

import '../constanst/constanst.dart';

class Listtile_Recipe extends StatelessWidget {
  final String texttt;
  Listtile_Recipe({required this.texttt});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,

      width:
          MediaQuery.of(context).size.width - ratio_height(context, 20), //x-20,
      decoration: BoxDecoration(
          color: Color(0x20FFC5A4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      //child: detail
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.restaurant,
              color: Color(0xffFF5C00),
              size: 18,
            ),
          ),
          SizedBox(
            width: ratio_height(context, 20), //20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                texttt,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.italic,
                    color: Color(0xffFF5C00)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

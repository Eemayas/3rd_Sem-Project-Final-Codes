import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';

class Tile_for_detail extends StatelessWidget {
  final String Text_list;
  final String Device_Orientation;
  final Widget Iccon;
  final Function()? onpressed;
  Tile_for_detail(
      {required this.Text_list,
      required this.Iccon,
      this.onpressed,
      required this.Device_Orientation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 9, bottom: 9),
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: Device_Orientation == Portraitt.ID
              ? ratio_height(context, 40)
              : ratio_width(context, 20),
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(4, 7),
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Iccon,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    Text_list,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

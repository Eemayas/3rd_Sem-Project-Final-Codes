import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String Alert_text,
    {String Alert_Title = 'WARNING'}) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(Alert_Title),
    content: Text(Alert_text),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogSignin(BuildContext context, String Alert_text,
    {required Function OnTap, String Alert_Title = 'WARNING'}) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
      OnTap;
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(Alert_Title),
    content: Text(Alert_text),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_from_firebase_public/component/Sign_TextField.dart';

import '../constanst/constanst.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String Email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Total_Height(context),
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration_backgroundimage,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter the Email to reset the password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[
                            Color(0xffEA5753),
                            Color(0xffCC540D),
                          ],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
              forgotbox(
                label: "Email",
                keyboardtype: TextInputType.emailAddress,
                orientation: Portraitt.ID,
                validator: (p0) {
                  p0 == null && !EmailValidator.validate(p0!)
                      ? "Enter the Email"
                      : null;
                },
                Onchanged: (p0) {
                  Email = p0;
                  print(Email);
                },
              ),
              resetbutton(
                Email: Email,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class resetbutton extends StatelessWidget {
  final String Email;

  resetbutton({Key? key, required this.Email}) : super(key: key);
  Future resetpassword() async {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () async {
          try {
            await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
            final snackBar = SnackBar(
              content: const Text('Email Send'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } on FirebaseAuthException catch (e) {
            final snackBar = SnackBar(
              content: Text(e.code),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Container(
          height: ratio_height(context, 50), // 50,
          width: ratio_width(context, 150), //150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffF89B29), Color(0xffFF0F7B)],
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 7),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.email,
                color: Colors.white,
              ),
              Text(
                "Send Email",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class forgotbox extends StatefulWidget {
  final String orientation;
  final Function(String)? Onchanged;
  final String? Function(String?)? validator;

  final String label;
  TextInputType keyboardtype;
  forgotbox(
      {required this.label,
      required this.keyboardtype,
      this.Onchanged,
      required this.orientation,
      this.validator});

  @override
  State<forgotbox> createState() => _forgotboxState();
}

class _forgotboxState extends State<forgotbox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: widget.orientation == Portraitt.ID
            ? ratio_height(context, 60)
            : ratio_height(context, 130), //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: widget.Onchanged,
          validator: widget.validator,
          keyboardType: widget.keyboardtype,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Center(child: Text(widget.label)),
            labelStyle: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

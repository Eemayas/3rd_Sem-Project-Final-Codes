import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/component/Alertdialouge.dart';
import 'package:image_from_firebase_public/component/Login_Component.dart';
import 'package:pinput/pinput.dart';

import '../constanst/constanst.dart';

class Pin_Input_Page extends StatelessWidget {
  const Pin_Input_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Pinpage_Text(),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration_backgroundimage,
          child: SafeArea(
              child: const FractionallySizedBox(
                  widthFactor: 1, child: Pinput_Page()))),
    );
  }
}

class Pinput_Page extends StatefulWidget {
  const Pinput_Page({Key? key}) : super(key: key);

  @override
  State<Pinput_Page> createState() => _Pinput_PageState();
}

class _Pinput_PageState extends State<Pinput_Page> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String Password = "1234";
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              // androidSmsAutofillMethod:
              //     AndroidSmsAutofillMethod.smsUserConsentApi,
              // listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                if (value == Password) {
                  return null;
                } else {
                  return 'Pin is incorrect';
                }
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),

              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          login_button(
              Textt: "Validate",
              onTap: () {
                print(formKey.currentState!.validate());
                formKey.currentState!.validate()
                    ? Navigator.pushNamed(context, "datata")
                    : showAlertDialog(context, "Pin is Incorrect!!!!");
              }),
          // TextButton(
          //   onPressed: () => formKey.currentState!.validate(),
          //   child: const Text('Validate'),
          // ),
        ],
      ),
    );
  }
}

Text Pinpage_Text() {
  return Text(
    "Pin Entry",
    // textAlign: TextAlign.center,
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
          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
  );
}

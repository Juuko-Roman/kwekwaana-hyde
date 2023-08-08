import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kwekwana/screens/bottom_nav_bar_screens.dart';
import 'package:kwekwana/screens/signingUpProcess/enable_location.dart';
import 'package:pinput/pinput.dart';

import '../../globals/global_vars.dart';
import '../../services/firebase_auth.dart';
import '../../widgets/backbutton.dart';
import '../../widgets/num_pad.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  TextEditingController otpController = TextEditingController();
  final _authService = FirebaseAuthService();

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Colors.pink;
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 48.0, 20, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Color.fromRGBO(255, 244, 245, 1),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(249, 231, 255, 1),
              Color.fromRGBO(254, 239, 246, 1),
              Color.fromRGBO(253, 249, 255, 1),
              Color.fromRGBO(253, 249, 255, 1),
              Color.fromRGBO(251, 216, 234, 1),
              Color.fromRGBO(251, 216, 234, 1),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyBackButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '42',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              width: 200,
              child: Text(
                'Type the verification code we have sent you',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromRGBO(76, 74, 77, 1)),
              ),
            ),
            Container(
              // width: 270,
              margin: EdgeInsets.only(bottom: 30),
              child: Directionality(
                // Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  keyboardType: TextInputType.none,
                  length: 6,
                  controller: otpController,
                  // focusNode: focusNode,
                  androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  // defaultPinTheme: defaultPinTheme,
                  validator: (value) {
                    // return value == '2222' ? null : 'Pin is incorrect';
                  },
                  onClipboardFound: (value) {
                    otpController.setText(value);
                  },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) async {
                    bool result = await _authService.verifyCode(pin);
                    if (result) {
                      if (goToHome) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavBarScreens()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EnableLocation()),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Wrong Code. please try again')));
                    }
                  },

                  onChanged: (value) {
                    // debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: Colors.pink,
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
                      // borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
            NumPad(
              buttonSize: 70,
              buttonColor: Color.fromRGBO(255, 83, 169, 0.08),
              iconColor: Color.fromRGBO(255, 83, 169, 0.2),
              controller: otpController,

              delete: () {
                otpController.text =
                    otpController.text == "" ? "" : otpController.text.substring(0, otpController.text.length - 1);
              },
              // do something with the input numbers
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Text(
                'Resend Code',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

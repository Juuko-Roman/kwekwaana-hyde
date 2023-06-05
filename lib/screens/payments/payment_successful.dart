import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bottom_nav_bar_screens.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              child: const FaIcon(
                FontAwesomeIcons.handshake,
                color: Colors.pinkAccent,
                size: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Icon(
              Icons.check,
              color: Colors.green,
              size: 60,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Thanks for subscribing',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your payment has been confirmed.check your Email for confirmation Mail',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0, top: 30),
              child: Material(
                elevation: 1.0,
                color: Color.fromRGBO(255, 83, 169, 1),
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBarScreens()),
                    );
                  },
                  minWidth: 350,
                  height: 42.0,
                  child: const Text(
                    'Back to home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

import 'package:kwekwana/screens/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => context.push('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.pinkAccent,
              ],
              tileMode: TileMode.mirror,
              stops: [
                0.8,
                1,
              ]),
        ),
        constraints: BoxConstraints(),
        child: Stack(
          children: [
            Positioned(
              bottom: -40,
              left: -40,
              child: Container(
                  height: 200, width: 200, decoration: BoxDecoration(color: Colors.pink[100], shape: BoxShape.circle)),
            ),
            Positioned(
              bottom: -50,
              left: -50,
              child: Container(
                  height: 200, width: 200, decoration: BoxDecoration(color: Colors.pink[300], shape: BoxShape.circle)),
            ),
            Positioned(
              bottom: -60,
              left: -60,
              child: Container(
                  height: 200, width: 200, decoration: BoxDecoration(color: Colors.pink[700], shape: BoxShape.circle)),
            ),
            Positioned(
              bottom: -70,
              left: -70,
              child: Container(
                  height: 200, width: 200, decoration: BoxDecoration(color: Colors.pink[900], shape: BoxShape.circle)),
            ),
            Positioned(
              top: -70,
              left: 300,
              child: SizedBox(
                  height: 200,
                  width: 250,
                  child: Transform.rotate(
                    angle: 12.0,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.pink[100], borderRadius: BorderRadius.circular(30)),
                      // padding: const EdgeInsets.all(8.0),

                      // child: const Text('Apartment for rent!'),
                    ),
                  )),
            ),
            Positioned(
              top: 190,
              right: 20,
              child: Opacity(
                opacity: 0.1,
                child: Container(
                  height: 230,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.pink[300], shape: BoxShape.circle, boxShadow: const [
                    BoxShadow(color: Colors.black38, blurRadius: 3.0, offset: Offset(0, 4)),
                    BoxShadow(offset: Offset(-1, 0))
                  ]),
                ),
              ),
            ),
            const Positioned(
              top: 210,
              right: 95,
              child: SizedBox(
                height: 185,
                width: 160,
                child: Center(
                  child: Image(
                    image: AssetImage('images/Group 848.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 1, top: 120, left: 15),
              child: Center(
                child: Text(
                  'OKWEKWANA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5, top: 310, left: 10),
              child: Center(
                child: Text(
                  'Match & Connect',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
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

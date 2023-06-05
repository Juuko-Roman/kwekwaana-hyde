import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kwekwana/screens/auth/signup.dart';

import '../widgets/confirmation_button.dart';
import 'auth/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
              image: DecorationImage(image: AssetImage('images/image1.jpg'), fit: BoxFit.cover),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Color.fromRGBO(255, 244, 245, 1),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(253, 249, 255, 1),
                  Color.fromRGBO(254, 239, 246, 1),
                  Color.fromRGBO(251, 216, 234, 1),
                  Color.fromRGBO(251, 216, 234, 1),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 10),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: Text(
                    'Okwekwana',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(255, 83, 169, 1),
                    ),
                  ),
                ),
                ConfirmationButton(
                  text: 'Log in',
                  textColor: Colors.white,
                  color: Color.fromRGBO(255, 83, 169, 1),
                  onPressed: () {
                    context.push('/login');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ConfirmationButton(
                  text: 'Sign Up',
                  textColor: Color.fromRGBO(255, 83, 169, 1),
                  color: Colors.white,
                  onPressed: () {
                    context.push('/signup');
                  },
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

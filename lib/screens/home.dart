import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kwekwana/screens/signup.dart';

import 'login.dart';

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
                Material(
                  elevation: 1.0,
                  color: Color.fromRGBO(255, 83, 169, 1),
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                    onPressed: () async {
                      context.push('/login');
                    },
                    minWidth: 350,
                    height: 42.0,
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 1.0,
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                    onPressed: () async {
                      GoRouter.of(context).push('/signup');
                    },
                    height: 42.0,
                    minWidth: 350,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 83, 169, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('welcome screen'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.push('/home');
            },
            child: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    );
  }
}

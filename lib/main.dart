import 'package:flutter/material.dart';
import 'package:kwekwana/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'poppins',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WelcomeScreen(),
    );
  }
}

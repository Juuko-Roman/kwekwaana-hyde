import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kwekwana/screens/welcome.dart';
import 'package:kwekwana/services/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'poppins',
        primaryColor: Color.fromRGBO(255, 0, 127, 1),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.goRouter,
    );
  }
}

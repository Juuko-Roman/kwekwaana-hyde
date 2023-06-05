import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/auth/login.dart';
import '../screens/signingUpProcess/enable_location.dart';
import '../screens/signingUpProcess/gender_selection.dart';
import '../screens/auth/signup.dart';
import '../screens/signingUpProcess/verification_code.dart';
import '../screens/welcome.dart';

class AppRoutes {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) => HomeScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => LoginPage(),
      ),
      GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) => SignUp(),
      ),
      GoRoute(
        path: '/verification',
        builder: (BuildContext context, GoRouterState state) => VerificationCode(),
      ),
      GoRoute(
        path: '/enableLocation',
        builder: (BuildContext context, GoRouterState state) => EnableLocation(),
      ),
      GoRoute(
        path: '/genderSelection',
        builder: (BuildContext context, GoRouterState state) => GenderSelection(),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:kwekwana/screens/signup.dart';
import 'package:kwekwana/screens/verification_code.dart';

import '../services/firebase_auth.dart';
import '../services/routes.dart';
import '../widgets/formfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _authService = FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _numberController = TextEditingController();

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (ctxt) => WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: SpinKitFadingCircle(
              itemBuilder: (BuildContext ctxt, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
      );
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      final result = await _authService.signInWithEmailAndPassword(email, password);
      Navigator.pop(context);
      if (result != null) {
        context.push('/enableLocation');
      } else {
        // login failed, show error message
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid email or password')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 40),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(255, 0, 127, 1),
                    size: 25,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log in to find love',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    MyFormField(
                        icon: Icons.phone_enabled,
                        controller: _numberController,
                        obscureText: false,
                        errorMsg: "Please enter your number",
                        hinttext: 'Enter number'),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color.fromRGBO(178, 178, 178, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                            child: Text(
                              "or email",
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color.fromRGBO(178, 178, 178, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyFormField(
                        icon: Icons.email,
                        controller: _emailController,
                        obscureText: false,
                        errorMsg: "Please enter your email",
                        hinttext: 'enter your email'),
                    MyFormField(
                        icon: Icons.remove_red_eye,
                        controller: _passwordController,
                        obscureText: true,
                        errorMsg: "Please enter your password",
                        hinttext: 'Enter password'),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Material(
                        elevation: 1.5,
                        borderRadius: BorderRadius.circular(50.0),
                        child: MaterialButton(
                          onPressed: _handleLogin,
                          height: 42.0,
                          minWidth: 400,
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 83, 169, 1),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 127, 1),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

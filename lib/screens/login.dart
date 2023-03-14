import 'package:flutter/material.dart';
import 'package:kwekwana/screens/signup.dart';
import 'package:kwekwana/screens/verification_code.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Navigator.pop(context);
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
            Container(
              margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color.fromRGBO(255, 196, 225, 1)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 229, 242, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.phone_enabled,
                      color: Color.fromRGBO(255, 0, 127, 1),
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter number',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(178, 178, 178, 1),
                        ),
                        // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            Container(
              margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color.fromRGBO(255, 196, 225, 1)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 229, 242, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.email,
                      color: Color.fromRGBO(255, 0, 127, 1),
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter user name',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(178, 178, 178, 1),
                        ),
                        // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15, top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color.fromRGBO(255, 196, 225, 1)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 229, 242, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Color.fromRGBO(255, 0, 127, 1),
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.left,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter password',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(178, 178, 178, 1),
                        ),
                        // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Material(
                elevation: 1.5,
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerificationCode()),
                    );
                  },
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
    );
  }
}

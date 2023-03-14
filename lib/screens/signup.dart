import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwekwana/screens/verification_code.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 35.0, 20, 0),
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
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
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
              children: const [
                Text(
                  'Register to find love',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                dragStartBehavior: DragStartBehavior.down,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Color.fromRGBO(178, 178, 178, 1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                          child: Text(
                            "phone",
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
                    margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 10),
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
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
                          child: Text(
                            "or email and password",
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
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
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
                              hintText: 'Confirm password',
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
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
                          child: Text(
                            "or sign up with",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                            color: Color.fromRGBO(178, 0, 159, 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            FontAwesomeIcons.squareFacebook,
                            size: 30,
                            color: Color.fromRGBO(178, 0, 159, 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            FontAwesomeIcons.google,
                            size: 30,
                            color: Color.fromRGBO(178, 0, 159, 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                            color: Color.fromRGBO(178, 0, 159, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
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
                          'Sign Up',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 83, 169, 1),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: RichText(
                      text: TextSpan(
                        text: 'By continuing, u agree to our ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms Of Service ',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromRGBO(154, 69, 229, 1),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' and acknowledge that you have read our  ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 11,
                              color: Color.fromRGBO(154, 69, 229, 1),
                            ),
                          ),
                          TextSpan(text: 'to learn about how we collect and share your data'),
                        ],
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

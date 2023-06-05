import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:kwekwana/screens/signingUpProcess/verification_code.dart';

import '../../services/firebase_auth.dart';
import '../../widgets/backbutton.dart';
import '../../widgets/confirmation_button.dart';
import '../../widgets/formfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _authService = FirebaseAuthService();
  final _rformKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cpasswordController = TextEditingController();
  final _numberController = TextEditingController();
  void _handleSignup() async {
    if (_rformKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      final cpassword = _cpasswordController.text.trim();

      if (password == cpassword) {
        final result = await _authService.signUpWithEmailAndPassword(email, password);
        if (result != null) {
          context.push('/enableLocation');
        } else {
          // signup failed, show error message
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error signing up')));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Passwords dont match')));
      }
    }
  }

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
            MyBackButton(
              onTap: () {
                Navigator.pop(context);
              },
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
              child: Form(
                key: _rformKey,
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
                    MyFormField(
                        icon: Icons.remove_red_eye,
                        controller: _cpasswordController,
                        obscureText: true,
                        errorMsg: "Please confirm Password",
                        hinttext: 'Password password'),
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
                            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
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
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color.fromRGBO(149, 0, 171, 1), Color.fromRGBO(232, 0, 137, 1)],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ).createShader(bounds);
                              },
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                size: 30,
                                color: Color.fromRGBO(178, 0, 159, 1),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color.fromRGBO(149, 0, 171, 1), Color.fromRGBO(232, 0, 137, 1)],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ).createShader(bounds);
                              },
                              child: Icon(
                                FontAwesomeIcons.squareFacebook,
                                size: 30,
                                color: Color.fromRGBO(178, 0, 159, 1),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color.fromRGBO(149, 0, 171, 1), Color.fromRGBO(232, 0, 137, 1)],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ).createShader(bounds);
                              },
                              child: Icon(
                                FontAwesomeIcons.google,
                                size: 30,
                                color: Color.fromRGBO(178, 0, 159, 1),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color.fromRGBO(149, 0, 171, 1), Color.fromRGBO(232, 0, 137, 1)],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ).createShader(bounds);
                              },
                              child: Icon(
                                FontAwesomeIcons.twitter,
                                size: 30,
                                color: Color.fromRGBO(178, 0, 159, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: ConfirmationButton(
                        text: 'Sign Up',
                        textColor: Color.fromRGBO(255, 83, 169, 1),
                        color: Colors.white,
                        onPressed: _handleSignup,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: RichText(
                        text: const TextSpan(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

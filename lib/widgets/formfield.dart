import 'package:flutter/material.dart';

class MyFormField extends StatefulWidget {
  TextEditingController? controller;
  IconData? icon;
  bool? obscureText;
  String? errorMsg;
  String? hinttext;
  MyFormField({this.controller, this.icon, this.errorMsg, this.hinttext, this.obscureText});

  @override
  State<MyFormField> createState() => _MyFormFieldState(
      icon: icon, controller: controller, obscureText: obscureText, errorMsg: errorMsg, hinttext: hinttext);
}

class _MyFormFieldState extends State<MyFormField> {
  TextEditingController? controller;
  IconData? icon;
  bool? obscureText;
  String? errorMsg;
  String? hinttext;
  _MyFormFieldState({this.controller, this.icon, this.errorMsg, this.hinttext, this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(bottom: 10),
      child: TextFormField(
        textAlign: TextAlign.left,
        controller: controller,
        obscureText: obscureText!,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return errorMsg;
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          filled: true,
          fillColor: Colors.white,
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Color.fromRGBO(178, 178, 178, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 196, 225, 1),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Color.fromRGBO(205, 146, 175, 1),
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 196, 225, 1),
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Color.fromRGBO(205, 146, 175, 1),
              width: 1.0,
            ),
          ),
          prefixIcon:
              // Container(
              //   padding: EdgeInsets.all(0),
              //   decoration: BoxDecoration(
              //     color: Color.fromRGBO(255, 229, 242, 1),
              //     borderRadius: BorderRadius.circular(50),
              //   ),
              //   child:
              Icon(
            icon,
            color: Color.fromRGBO(255, 0, 127, 1),
            size: 25,
          ),
          // ),
        ),
      ),
    );
  }
}

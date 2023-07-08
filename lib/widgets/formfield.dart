import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  TextEditingController? controller;
  IconData? icon;
  bool? obscureText;
  String? errorMsg;
  String? hinttext;
  TextInputType keyboard;
  bool enable;

  void Function()? ontap;
  MyFormField({
    this.controller,
    this.icon,
    this.errorMsg,
    this.hinttext,
    this.obscureText,
    this.keyboard = TextInputType.text,
    this.enable = true,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(bottom: 10),
        child: TextFormField(
          enabled: enable,
          textAlign: TextAlign.left,
          controller: controller,
          obscureText: obscureText!,
          keyboardType: keyboard,
          validator: (value) {
            if (enable) {
              if (value!.isEmpty)
                return errorMsg;
              else {
                if (hinttext!.contains("number")) {
                  if (value.length == 13 && value.startsWith("+256"))
                    return null;
                  else
                    return "invalid phone number length";
                } else
                  return null;
              }
            } else
              return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            filled: true,
            fillColor: enable ? Colors.white : Colors.grey.shade50,
            hintText: hinttext,
            hintStyle: TextStyle(
              color: enable ? Color.fromRGBO(178, 178, 178, 1) : Colors.grey.shade300,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Color.fromRGBO(255, 196, 225, 1),
                width: 1.0,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: enable ? Color.fromRGBO(255, 196, 225, 1) : Colors.white,
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
                color: enable ? Color.fromRGBO(255, 196, 225, 1) : Colors.grey.shade50,
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
            prefixIcon: Icon(icon, color: enable ? Color.fromRGBO(255, 0, 127, 1) : Colors.grey.shade300, size: 25),
            // ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ConfirmationButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  Color? color;
  Color? textColor;
  ConfirmationButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      color: color,
      borderRadius: BorderRadius.circular(50.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 350,
        height: 42.0,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Capsule extends StatelessWidget {
  const Capsule({
    super.key,
    required this.isTapped,
    required this.iconData,
    required this.text,
  });

  final bool isTapped;
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isTapped ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
        border: Border.all(
          color: Color.fromRGBO(240, 240, 240, 1),
        ),
      ),
      child: Row(
        children: [
          Icon(iconData, color: isTapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1)),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: isTapped ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

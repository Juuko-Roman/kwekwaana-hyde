import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  void Function()? onTap;
  MyBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color(0xFFFFFFFF),
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
    );
  }
}

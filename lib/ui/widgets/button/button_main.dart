import 'package:flutter/material.dart';
import 'package:project/shared/styles.dart';

class ButtonMain extends StatelessWidget {
  final String? text;
  const ButtonMain({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Text(
          text!,
          style: roboto500.copyWith(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xff3abbd7),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

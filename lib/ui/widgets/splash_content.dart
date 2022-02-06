import 'package:flutter/material.dart';
import 'package:project/shared/styles.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text1,
    this.text2,
    this.image,
  }) : super(key: key);
  final String? text1, text2, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 50),
        Image.asset(
          image!,
          height: 200,
          width: 362,
        ),
        const SizedBox(height: 70),
        Center(
          child: Text(
            text1!,
            style: poppins500.copyWith(fontSize: 14),
          ),
        ),
        Text(
          text2!,
          style: poppins500.copyWith(
            fontSize: 12,
            color: const Color(0xff99a2b0),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

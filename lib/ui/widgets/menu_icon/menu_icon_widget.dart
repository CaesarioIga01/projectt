import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';

class MenuIconWidget extends StatelessWidget {
  final String? text;
  final String? imagePath;
  const MenuIconWidget({
    Key? key,
    this.text,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath!),
          const SizedBox(height: 5),
          Text(
            text!,
            style: poppins500.copyWith(
              fontSize: 10,
              color: ColorResources.textColor,
            ),
          )
        ],
      ),
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: ColorResources.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

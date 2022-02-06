import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  const TextFieldWidget({Key? key, this.hintText, this.icon, this.iconColor, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(color: ColorResources.textColor, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hintText!,
                style: roboto400.copyWith(
                  fontSize: 12,
                  color: textColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

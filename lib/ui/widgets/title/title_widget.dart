import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';

// ignore: must_be_immutable
class TitleWidget extends StatelessWidget {
  final String? text;
  bool? isShow = true;
  TitleWidget({
    Key? key,
    this.text,
    this.isShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: poppins700.copyWith(
            fontSize: 18,
            color: ColorResources.textColor,
          ),
        ),
        isShow!
            ? Text(
                'Lihat Selengkapnya',
                style: poppins400.copyWith(color: Colors.grey, fontSize: 12),
              )
            : const SizedBox(),
      ],
    );
  }
}

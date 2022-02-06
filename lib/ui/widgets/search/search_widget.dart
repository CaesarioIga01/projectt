import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';

class SearchWidget extends StatelessWidget {
  final String? text;
  const SearchWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              text!,
              style: poppins400.copyWith(
                fontSize: 12,
                color: const Color(0xff8C8396),
              ),
            ),
          ),
          Container(
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            height: 34,
            width: 35,
            decoration: BoxDecoration(
              color: ColorResources.blueColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      width: double.infinity,
      height: 34,
      decoration: BoxDecoration(
        color: const Color(0xffECEFF6),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

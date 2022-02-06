import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';

class SuccessFeedbackWebinarPage extends StatelessWidget {
  const SuccessFeedbackWebinarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat feedback dan konfirmasi \nkehadiran kamu sudah terkirim!',
              style: poppins700.copyWith(
                fontSize: 20,
                color: ColorResources.textColor,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset('assets/ic_success.png'),
          ],
        ),
      ),
    );
  }
}

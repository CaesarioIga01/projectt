import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/course/course_active.dart';
import 'package:project/ui/pages/webinar/webinar_detail_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';

class SuccessScheckoutPage extends StatelessWidget {
  bool? isFromCourse = false;

  SuccessScheckoutPage({Key? key, this.isFromCourse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat kamu sudah \nterdaftar di kursusnya!',
              style: poppins700.copyWith(
                fontSize: 20,
                color: ColorResources.textColor,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset('assets/ic_success.png'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => CourseActive(
                        // isFromSucess: true,
                        ),
                  ),
                );
              },
              child: ButtonMain(
                text: isFromCourse! ? 'Masuk Kursus' : 'Lihat Detail',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

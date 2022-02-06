import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/course/detail_course_page.dart';
import 'package:project/ui/widgets/search/search_widget.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          _header(),
          const SizedBox(height: 15),
          _search(),
          const SizedBox(height: 14),
          _title(),
          const SizedBox(height: 20),
          _body(context),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kursus',
                style: poppins700.copyWith(
                  fontSize: 26,
                  color: ColorResources.textColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Temukan kursus yang sesuai dengan minat Anda',
                style: poppins400.copyWith(
                  fontSize: 10,
                  color: ColorResources.blueColor,
                ),
              ),
            ],
          ),
          Image.asset('assets/image_kursus.png'),
        ],
      ),
    );
  }

  Widget _search() {
    return const Center(
      child: SearchWidget(
        text: 'Cari apa yang ingin Anda pelajari',
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TitleWidget(
        text: 'Daftar Kursus',
        isShow: false,
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => const DetailCoursePage(),
                ),
              );
            },
            child: Image.asset('assets/banner_home.png'),
          ),
          const SizedBox(height: 10),
          Image.asset('assets/banner_home_2.png'),
        ],
      ),
    );
  }
}

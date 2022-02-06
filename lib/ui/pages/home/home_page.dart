import 'package:flutter/material.dart';

import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/course/course_page.dart';
import 'package:project/ui/pages/course/detail_course_page.dart';
import 'package:project/ui/widgets/menu_icon/menu_icon_widget.dart';
import 'package:project/ui/widgets/search/search_widget.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          _header(),
          const SizedBox(height: 25),
          _search(),
          const SizedBox(height: 14),
          _title1(),
          const SizedBox(height: 20),
          _menuIcon(),
          const SizedBox(height: 20),
          _title2(),
          const SizedBox(height: 20),
          _body(context),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '👋 Selamat Datang!',
                style: poppins600.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 11),
              Image.asset(
                'assets/logo2.png',
                width: 180,
                height: 40,
              ),
            ],
          ),
          Image.asset(
            'assets/image_home.png',
            width: 118,
            height: 81,
          ),
        ],
      ),
    );
  }

  Widget _search() {
    return const Center(
      child: SearchWidget(
        text: 'Cari kursus, kategori, mentor',
      ),
    );
  }

  Widget _title1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TitleWidget(
        text: 'Kategori Kursus',
        isShow: false,
      ),
    );
  }

  Widget _menuIcon() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              MenuIconWidget(
                text: 'Desain Aplikasi',
                imagePath: 'assets/desain_aplikasi.png',
              ),
              MenuIconWidget(
                text: 'Game & Animasi',
                imagePath: 'assets/game_animasi.png',
              ),
              MenuIconWidget(
                text: 'Sensor & Robotik',
                imagePath: 'assets/sensor_robotik.png',
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              MenuIconWidget(
                text: 'Art & Craft',
                imagePath: 'assets/art_craft.png',
              ),
              MenuIconWidget(
                text: 'Food Stylist',
                imagePath: 'assets/food_stylist.png',
              ),
              MenuIconWidget(
                text: 'Desain & Visual',
                imagePath: 'assets/desain_visual.png',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _title2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TitleWidget(
        text: 'Kursus Terkini',
        isShow: true,
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            child: Image.asset('assets/copywriting.png'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => const DetailCoursePage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          GestureDetector(
            child: Image.asset('assets/banner_home_2.png'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => const CoursePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

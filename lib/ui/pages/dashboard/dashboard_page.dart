import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/ui/pages/course/course_page.dart';
import 'package:project/ui/pages/home/home_page.dart';
import 'package:project/ui/pages/profile/profile_page.dart';
import 'package:project/ui/pages/webinar/webinar_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNav(),
      body: _body(),
    );
  }

  Widget _bottomNav() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        selectedItemColor: ColorResources.blueColor,
        unselectedItemColor: const Color(0xffD8D8D8),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_home.png',
              width: 20,
              color: currentIndex == 0
                  ? ColorResources.blueColor
                  : const Color(0xffD8D8D8),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_document.png',
              width: 20,
              color: currentIndex == 1
                  ? ColorResources.blueColor
                  : const Color(0xffD8D8D8),
            ),
            label: 'Kursus',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_video.png',
              width: 20,
              color: currentIndex == 2
                  ? ColorResources.blueColor
                  : const Color(0xffD8D8D8),
            ),
            label: 'Webinar',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_profile.png',
              width: 20,
              color: currentIndex == 3
                  ? ColorResources.blueColor
                  : const Color(0xffD8D8D8),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const CoursePage();
      case 2:
        return const WebinarPage();
      case 3:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}

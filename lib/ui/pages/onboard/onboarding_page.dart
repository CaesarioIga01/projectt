import 'package:flutter/material.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/auth/login_page.dart';
import 'package:project/ui/pages/auth/register_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';

import '../../widgets/splash_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text1": "Standar Industri",
      "text2": "Menggunakan kurikulum adaptif \ndengan konsep DMSO",
      "image": "assets/onboarding1.png"
    },
    {
      "text1": "Live Streaming",
      "text2":
          "Pembelajaran dilakukan dengan tatap \nmuka secara online dan live",
      "image": "assets/onboarding2.png",
    },
    {
      "text1": "Sertifikasi",
      "text2": "Dapatkan sertifikat keahlian setelah \nmengikuti kursus",
      "image": "assets/onboarding3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              _imageHeader(),
              _indicator(),
              const SizedBox(height: 10),
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageHeader() {
    return Expanded(
      flex: 3,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        itemCount: splashData.length,
        itemBuilder: (context, index) => SplashContent(
          image: splashData[index]['image'],
          text1: splashData[index]['text1'],
          text2: splashData[index]['text2'],
        ),
      ),
    );
  }

  Widget _indicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        splashData.length,
        (index) => buildDot(index: index),
      ),
    );
  }

  Widget _body() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: const BoxDecoration(
          color: Color(0xffe3f5f9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const LoginPage(),
                  ),
                );
              },
              child: const ButtonMain(text: 'Masuk dengan Akun'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const LoginPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    'Masuk dengan Google',
                    style: roboto500.copyWith(
                      color: const Color(0xffdb5134),
                      fontSize: 14,
                    ),
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xffdb5134),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 32.5),
            _footerBodyText(),
          ],
        ),
      ),
    );
  }

  Widget _footerBodyText() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => const RegisterPage(),
          ),
        );
      },
      child: RichText(
        text: TextSpan(
          text: 'Belum punya Akun?',
          style: roboto400.copyWith(fontSize: 14, color: Colors.black),
          children: [
            TextSpan(
              text: ' Daftar Disini',
              style: roboto700.copyWith(
                fontSize: 14,
                color: const Color(0xff3abbd7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 13),
      height: 5,
      width: currentPage == index ? 7 : 5,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color(0xff3abbd7)
            : const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

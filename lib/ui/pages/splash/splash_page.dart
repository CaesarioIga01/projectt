import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:project/shared/asset.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/onboard/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() {
    SchedulerBinding.instance!.addPostFrameCallback(
      (_) async {
        await Future.delayed(
          const Duration(seconds: 3),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => const OnboardingPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
            const SizedBox(height: 23),
            _title(),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Image.asset(Images.logo);
  }

  Widget _title() {
    return Text(
      'The Future of Smart Learning is Muse\nAkademi Excellence Learning Skills',
      style: poppins500.copyWith(
        fontSize: 15,
        color: ColorResources.primaryColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}

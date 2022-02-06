import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/webinar/success_feedback_webinar_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';

class FeedbackWebinarPage extends StatelessWidget {
  const FeedbackWebinarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            'Konfirmasi kehadiran kamu \ndi Webinar dengan isi feedback ini yuk!',
            textAlign: TextAlign.center,
            style: poppins700.copyWith(
              fontSize: 16,
              color: ColorResources.textColor,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorResources.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Bagaimana tingkat kepuasan kamu dengan webinar ini?',
                    style: poppins400.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  Image.asset('assets/emoji.png'),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Keren banget webinarnya',
                      style: poppins500,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity * 0.5,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: ColorResources.blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Dengan ini saya mengkonfirmasi kehadairan saya \npada webinar',
                          style: poppins400.copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => const SuccessFeedbackWebinarPage(),
                        ),
                      );
                    },
                    child: const ButtonMain(text: 'Kirim Feedback'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

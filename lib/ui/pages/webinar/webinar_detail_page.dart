import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/webinar/checkout_webinar_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:url_launcher/url_launcher.dart';

import 'feedback_webinar_page.dart';

// ignore: must_be_immutable
class WebinarDetailPage extends StatelessWidget {
  bool? isFromSucess = true;
  WebinarDetailPage({
    Key? key,
    this.isFromSucess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          color: ColorResources.blueColor,
        ),
        centerTitle: true,
        title: Text(
          'Detail Webinar',
          style: poppins600.copyWith(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              _logo(),
              const SizedBox(height: 10),
              _title(),
              const SizedBox(height: 10),
              _description(),
              const SizedBox(height: 10),
              _subtitle1(),
              _description1(),
              const SizedBox(height: 10),
              _subtitle2(),
              _description2(),
              const SizedBox(height: 20),
              _mentor(),
              const SizedBox(height: 50),
              _button(context),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Image.asset('assets/detail_webinar.png');
  }

  Widget _title() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tech Recruiter \nStrategies For Hiring',
          style: poppins700.copyWith(
            fontSize: 20,
            color: ColorResources.textColor,
          ),
        ),
        Column(
          crossAxisAlignment: !isFromSucess!
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.center,
          children: [
            !isFromSucess!
                ? Text(
                    'Gratis',
                    style: poppins700.copyWith(
                      fontSize: 16,
                      color: ColorResources.blueColor,
                    ),
                  )
                : Text(
                    'Terdaftar',
                    style: poppins700.copyWith(
                      fontSize: 16,
                      color: ColorResources.blueColor,
                    ),
                  ),
            !isFromSucess!
                ? Image.asset('assets/ic_bookmark.png')
                : const SizedBox(),
          ],
        ),
      ],
    );
  }

  Widget _description() {
    return Text(
      'Siapa yang penasaran bagaimana cara recruiters merekrut talent-talent untuk perusahaan mereka? Apa stragei yang mereka gunakan dan apa tips-tips yang mereka punya?',
      textAlign: TextAlign.left,
      style: poppins400.copyWith(
        fontSize: 12,
        color: const Color(0xff212427),
      ),
    );
  }

  Widget _subtitle1() {
    return Text(
      'Pemateri',
      style: poppins600.copyWith(
        fontSize: 16,
        color: ColorResources.textColor,
      ),
    );
  }

  Widget _description1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• Faizal Dunggio (Talent Acquisition Manager at Tiket.com)',
          style: poppins400.copyWith(fontSize: 12),
        ),
        Text(
          '• Boy Sandi (Tech Recruiter at Dana)',
          style: poppins400.copyWith(fontSize: 12),
        ),
      ],
    );
  }

  Widget _subtitle2() {
    return Text(
      'Jadwal Webinar',
      style: poppins600.copyWith(
        fontSize: 16,
        color: ColorResources.textColor,
      ),
    );
  }

  Widget _description2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Jumat, 8 Januari 2022 Pukul 19.00 via Zoom',
          style: poppins400.copyWith(fontSize: 12),
        ),
        isFromSucess!
            ? InkWell(
                onTap: _launchURL,
                child: Icon(
                  Icons.notifications,
                  color: ColorResources.blueColor,
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  Widget _mentor() {
    return Image.asset('assets/mentor_webinar.png');
  }

  Widget _button(BuildContext context) {
    return !isFromSucess!
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => CheckoutWebinarPage(),
                ),
              );
            },
            child: const ButtonMain(
              text: 'Daftar Sekarang',
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const FeedbackWebinarPage(),
                    ),
                  );
                },
                child: Container(
                  width: 130,
                  child: Center(
                    child: Text(
                      'Absensi',
                      style: roboto500.copyWith(
                        fontSize: 14,
                        color: ColorResources.blueColor,
                      ),
                    ),
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: ColorResources.blueColor, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              InkWell(
                onTap: _launchURL,
                child: Container(
                  width: 130,
                  child: Center(
                    child: Text(
                      'Join Zoom',
                      style: roboto500.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff2C8BFC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          );
  }

  final String _url =
      'https://zoom.us/j/96690237900?pwd=L3ZUdVVEK1NLUDRuaWtJNzJFb21Odz09';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

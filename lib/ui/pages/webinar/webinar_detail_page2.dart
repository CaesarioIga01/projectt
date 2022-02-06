import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class WebinarDetailPage2 extends StatelessWidget {
  bool? isSaved = true;
  WebinarDetailPage2({
    Key? key,
    this.isSaved,
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
              _title(context),
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
    return Image.asset('assets/banner_livenow.png');
  }

  Widget _title(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 250,
          child: Text(
            'How Women Adapt in Men Majority Career?',
            overflow: TextOverflow.clip,
            style: poppins700.copyWith(
              fontSize: 20,
              color: ColorResources.textColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Image.asset(
            'assets/ic_bookmark.png',
            color: isSaved! ? ColorResources.blueColor : Colors.grey[200],
          ),
        ),
      ],
    );
  }

  Widget _description() {
    return Text(
      'Perempuan masih sering mengalami permasalahan diskriminasi dan kekhawatiran lainnya ketika berkarir di bidang yang didominasi oleh laki-laki. Bahas lebih lanjut yuk!',
      textAlign: TextAlign.left,
      style: poppins400.copyWith(
        fontSize: 12,
        color: const Color(0xff212427),
      ),
    );
  }

  Widget _subtitle1() {
    return Text(
      'Pembicara',
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
          '• Mutia Rachmi (Mentor WEWA Business-Tech Specialist)',
          style: poppins400.copyWith(fontSize: 12),
        ),
        Text(
          '• Cresida M (Mentor WEWAW Kapten Tim Nasional Softball)',
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
    return Text(
      'Jumat, 8 Januari 2022 Pukul 19.00 via Zoom, YouTube',
      style: poppins400.copyWith(fontSize: 12),
    );
  }

  Widget _mentor() {
    return Image.asset('assets/mentor_webinar.png');
  }

  Widget _button(BuildContext context) {
    return GestureDetector(
      onTap: isSaved! ? _launchURL : _launchURL,
      child: ButtonMain(
        text: !isSaved! ? 'Join Sekarang' : 'Tonton Webinar',
      ),
    );
  }

  final String _url = 'https://www.youtube.com/watch?v=4osHrMaBY9k&t=4622s';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

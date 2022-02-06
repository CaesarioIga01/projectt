import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/webinar/checkout_webinar_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class DetailCoursePage extends StatelessWidget {
  const DetailCoursePage({Key? key}) : super(key: key);

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
          'Detail Kursus',
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
              _description(),
              const SizedBox(height: 10),
              _subtitle1(),
              _description1(),
              const SizedBox(height: 10),
              _subtitle2(),
              _description2(),
              const SizedBox(height: 10),
              _subtitle3(),
              _description3(),
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
    return Image.asset('assets/copywriting.png');
  }

  Widget _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Copywriting',
          style: poppins700.copyWith(
            fontSize: 22,
            color: ColorResources.textColor,
          ),
        ),
        Text(
          'Rp99.000',
          style: poppins700.copyWith(
            fontSize: 16,
            color: const Color(0xffdb5134),
          ),
        ),
      ],
    );
  }

  Widget _description() {
    return Text(
      'Iklan bisa mempengaruhi pikiran dan emosi seseorang untuk membeli / melakukan tindakan lainnya. Sayangnya membuat iklan yang powerfull dan merangkai kata-kata yang menarik tidak mudah.',
      textAlign: TextAlign.justify,
      style: poppins400.copyWith(
        fontSize: 12,
        color: const Color(0xff212427),
      ),
    );
  }

  Widget _subtitle1() {
    return TitleWidget(
      text: 'Detail Materi',
      isShow: false,
    );
  }

  Widget _description1() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '• Basic Copywriting Skills',
                style: poppins400.copyWith(fontSize: 12),
              ),
              Text(
                '• Market Intelligence',
                style: poppins400.copyWith(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '• Copywriting to win Customer',
                style: poppins400.copyWith(fontSize: 12),
              ),
              Text(
                '• Content Operation',
                style: poppins400.copyWith(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '• Copywiring for Business',
                style: poppins400.copyWith(fontSize: 12),
              ),
              Text(
                '• Dragon Formula',
                style: poppins400.copyWith(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '• Find your Why',
                style: poppins400.copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _subtitle2() {
    return TitleWidget(
      text: 'Pemateri',
      isShow: false,
    );
  }

  Widget _description2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• James Jan Markus (Editor in Cheif & Founder @bapak2id)',
          style: poppins400.copyWith(fontSize: 12),
        ),
        const SizedBox(height: 5),
        Text(
          '• Ernesto Farre (Creative Director @mullenlowe_id)',
          style: poppins400.copyWith(fontSize: 12),
        ),
      ],
    );
  }

  Widget _subtitle3() {
    return TitleWidget(
      text: 'Jadwal Kursus',
      isShow: false,
    );
  }

  Widget _description3() {
    return Text(
      'Sesi ini bisa diakses kapan saja selama kelas masih dibuka.',
      style: poppins400.copyWith(fontSize: 12),
    );
  }

  Widget _mentor() {
    return Image.asset('assets/mentor_course.png');
  }

  Widget _button(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CheckoutWebinarPage(isFromCopyWriting: true),
        ),
      ),
      child: const ButtonMain(
        text: 'Beli Sekarang',
      ),
    );
  }
}

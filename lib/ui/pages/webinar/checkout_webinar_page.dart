import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/webinar/success_checkout_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class CheckoutWebinarPage extends StatelessWidget {
  bool? isFromCopyWriting = false;

  CheckoutWebinarPage({Key? key, this.isFromCopyWriting}) : super(key: key);

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
          'Daftar Webinar',
          style: poppins600.copyWith(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          _detailWebinar(),
          const SizedBox(height: 20),
          _text(),
          const SizedBox(height: 15),
          _detailPeserta(),
          const Spacer(),
          _price(),
          _button(context),
        ],
      ),
    );
  }

  Widget _detailWebinar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xffF1FDFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.close,
                color: Color(0xffc8161d),
                size: 20,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: isFromCopyWriting!
                    ? Image.asset('assets/copywriting_checkout.png')
                    : Image.asset('assets/checkout_webinar.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isFromCopyWriting!
                      ? Text(
                          'Copywriting',
                          style: poppins500.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        )
                      : Text(
                          'Tech Recuriter Strategies..',
                          style: poppins500.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                  isFromCopyWriting!
                      ? Text(
                          '99.000',
                          style: poppins500.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffDB5134),
                          ),
                        )
                      : Text(
                          'Gratis',
                          style: poppins400.copyWith(
                            fontSize: 12,
                            color: const Color(0xff00AAA8),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _text() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TitleWidget(
        text: 'Informasi Peserta',
        isShow: false,
      ),
    );
  }

  Widget _detailPeserta() {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffF1FDFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/ic_edit2.png',
                width: 15,
                height: 15,
                color: ColorResources.textColor,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Text(
                  'Nadifah Adya Ilham',
                  style: poppins500.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  'Universitas Negeri Malang',
                  style: poppins500.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'nadifaadya@gmail.com',
                  style: poppins500.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _price() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: poppins600.copyWith(
              fontSize: 16,
              color: ColorResources.textColor,
            ),
          ),
          isFromCopyWriting!
              ? Text(
                  'Rp 99.000',
                  style: poppins600.copyWith(
                      fontSize: 16, color: ColorResources.textColor),
                )
              : Text(
                  'Rp0',
                  style: poppins600.copyWith(
                    fontSize: 16,
                    color: ColorResources.textColor,
                  ),
                ),
        ],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => SuccessScheckoutPage(isFromCourse: true),
            ),
          );
        },
        child: const ButtonMain(
          text: 'Pesan Webinar',
        ),
      ),
    );
  }
}

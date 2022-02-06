import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/course/course.dart';
import 'package:project/ui/pages/profile/mater_sertifikat_page.dart';
import 'package:project/ui/pages/profile/saved_webinar_page.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/avatar.png',
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '👋 Hai Nadifah Adya!',
                            style: poppins500.copyWith(fontSize: 18),
                          ),
                          const SizedBox(width: 20),
                          Image.asset(
                            'assets/ic_edit2.png',
                            width: 15,
                            height: 15,
                            color: ColorResources.textColor,
                          ),
                        ],
                      ),
                      Text(
                        'nadifaadya@gmail.com',
                        style: poppins500.copyWith(
                            fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        'Universitas Negeri Malang',
                        style: poppins500.copyWith(
                            fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const Course(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/profile_banner.png',
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const SavedWebinarPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Webinar Tersimpan',
                          style: poppins400.copyWith(
                            color: ColorResources.textColor,
                            fontSize: 12,
                          ),
                        ),
                        CircleAvatar(
                          radius: 10,
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 10,
                          ),
                          backgroundColor: ColorResources.textColor,
                        ),
                      ],
                    ),
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffD9F8FF),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const MateriSertifikatPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Materi dan Sertifikat',
                          style: poppins400.copyWith(
                            fontSize: 12,
                            color: ColorResources.textColor,
                          ),
                        ),
                        CircleAvatar(
                          radius: 10,
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 10,
                          ),
                          backgroundColor: ColorResources.textColor,
                        ),
                      ],
                    ),
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffD9F8FF),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TitleWidget(
                text: 'Notifikasi',
                isShow: false,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: ColorResources.blueColor,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Reminder',
                            style: poppins500.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '15 menit lagi webinar akan segera dimulai',
                            style: poppins500.copyWith(
                                fontSize: 10, color: ColorResources.textColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: ColorResources.textColor, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

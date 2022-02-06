import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/widgets/search/search_widget.dart';

class MateriSertifikatPage extends StatelessWidget {
  const MateriSertifikatPage({Key? key}) : super(key: key);

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
          'Materi dan Sertifikat',
          style: poppins600.copyWith(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const SearchWidget(
              text: 'Cari nama webinar atau kelas',
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Materi',
                    style: poppins700.copyWith(
                      fontSize: 16,
                      color: const Color(0xff99a2b0),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    '|',
                    style: TextStyle(
                      color: Color(0xff99a2b0),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Sertifikat',
                    style: poppins700.copyWith(
                      fontSize: 16,
                      color: ColorResources.textColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffD9F8FF),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        '.pdf',
                        style: poppins500.copyWith(
                          fontSize: 14,
                          color: ColorResources.textColor,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white54,
                      border: Border.all(
                        width: 1,
                        color: ColorResources.textColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tech Recruiter Strategies',
                          style: poppins600.copyWith(
                            color: ColorResources.textColor,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Girlskode Indonesia',
                          style: poppins400.copyWith(
                            fontSize: 12,
                            color: const Color(0xff646464),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/ic_save.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 80,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Webinar',
                              style: poppins500.copyWith(
                                fontSize: 10,
                                color: const Color(0xff148DD6),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

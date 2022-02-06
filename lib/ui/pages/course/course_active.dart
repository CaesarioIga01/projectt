import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/widgets/title/title_widget.dart';

class CourseActive extends StatefulWidget {
  const CourseActive({Key? key}) : super(key: key);

  @override
  State<CourseActive> createState() => _CourseActiveState();
}

class _CourseActiveState extends State<CourseActive> {
  List data = [
    {
      'desc': 'File Modul 1',
    },
    {
      'desc': 'File Modul 2',
    },
    {
      'desc': 'Lihat Video kursus',
    },
  ];
  bool? isStrechedDropdown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.navigate_before),
          color: ColorResources.blueColor,
        ),
        centerTitle: true,
        title: Text(
          'Kursus Aktif',
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
              Image.asset('assets/copywriting.png'),
              Row(
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
                      color: const Color(0xffDB5134),
                    ),
                  ),
                ],
              ),
              Text(
                'Iklan bisa mempengaruhi pikiran dan emosi seseorang untuk membeli / melakukan tindakan lainnya. Sayangnya membuat iklan yang powerfull dan merangkai kata-kata yang menarik tidak mudah.',
                textAlign: TextAlign.justify,
                style: poppins400.copyWith(
                  fontSize: 12,
                  color: const Color(0xff212427),
                ),
              ),
              TitleWidget(
                text: 'Detail Materi',
                isShow: false,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sesi Kursus Part 1',
                              style: poppins400.copyWith(
                                fontSize: 12,
                                color: ColorResources.textColor,
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  isStrechedDropdown = !isStrechedDropdown!;
                                }),
                                child: Icon(
                                  isStrechedDropdown!
                                      ? Icons.arrow_upward_outlined
                                      : Icons.arrow_downward_outlined,
                                  size: 10,
                                ),
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sesi Kursus Part 2',
                              style: poppins400.copyWith(
                                fontSize: 12,
                                color: ColorResources.textColor,
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  isStrechedDropdown = !isStrechedDropdown!;
                                }),
                                child: Icon(
                                  isStrechedDropdown!
                                      ? Icons.arrow_upward_outlined
                                      : Icons.arrow_downward_outlined,
                                  size: 10,
                                ),
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
                ],
              ),
              // _logo(),
              // const SizedBox(
              //   height: 10,
              // ),
              // _title(),
              // _description(),
              // const SizedBox(
              //   height: 10,
              // ),
              // _subtitle(),
              // const SizedBox(
              //   height: 10,
              // ),
              // _menuDropdown(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _logo() {
//   return Image.asset('assets/copywriting.png');
// }

// Widget _title() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         'Copywriting',
//         style: poppins700.copyWith(
//           fontSize: 22,
//           color: ColorResources.textColor,
//         ),
//       ),
//       Text(
//         'Rp99.000',
//         style: poppins700.copyWith(
//           fontSize: 16,
//           color: const Color(0xffdb5134),
//         ),
//       ),
//     ],
//   );
// }

// Widget _description() {
//   return Text(
//     'Iklan bisa mempengaruhi pikiran dan emosi seseorang untuk membeli / melakukan tindakan lainnya. Sayangnya membuat iklan yang powerfull dan merangkai kata-kata yang menarik tidak mudah.',
//     textAlign: TextAlign.justify,
//     style: poppins400.copyWith(
//       fontSize: 12,
//       color: const Color(0xff212427),
//     ),
//   );
// }

// Widget _subtitle() {
//   return TitleWidget(
//     text: 'Detail Materi',
//     isShow: false,
//   );
// }

// Widget _menuDropdown() {
//   return Column(
//     children: [
//       Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         margin: const EdgeInsets.symmetric(horizontal: 30),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Sesi Kursus Part 1',
//                   style: poppins400.copyWith(
//                     fontSize: 12,
//                     color: ColorResources.textColor,
//                   ),
//                 ),
//                 CircleAvatar(
//                   radius: 10,
//                   child: GestureDetector(),
//                   backgroundColor: ColorResources.textColor,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         width: double.infinity,
//         height: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: const Color(0xffD9F8FF),
//         ),
//       ),
//     ],
//   );
// }

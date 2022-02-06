import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/webinar/webinar_detail_page.dart';
import 'package:project/ui/pages/webinar/webinar_detail_page2.dart';

class WebinarPage extends StatefulWidget {
  const WebinarPage({Key? key}) : super(key: key);

  @override
  State<WebinarPage> createState() => _WebinarPageState();
}

class _WebinarPageState extends State<WebinarPage>
    with TickerProviderStateMixin {
  TabController? tabController;
  TabController? tabController2;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController2 = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            _header(),
            const SizedBox(height: 10),
            _sliderTitle(),
            const SizedBox(height: 20),
            TabBar(
              indicatorColor: Colors.white,
              controller: tabController,
              unselectedLabelColor: const Color(0xff99A2B0),
              labelColor: ColorResources.blueColor,
              labelStyle: poppins700.copyWith(fontSize: 16),
              tabs: [
                Tab(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Live Now',
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Populer',
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: double.infinity,
                    // decoration: const BoxDecoration(
                    //   border: Border(
                    //     left: BorderSide(
                    //       color: Colors.grey,
                    //       width: 1,
                    //       style: BorderStyle.solid,
                    //     ),
                    //   ),
                    // ),
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      'Terbaru',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: TabBarView(
                controller: tabController,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => WebinarDetailPage2(
                            isSaved: false,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset('assets/banner_livenow_2.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => WebinarDetailPage(
                            isFromSucess: false,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset('assets/banner_webinar.png'),
                    ),
                  ),
                  const Text(''),
                ],
              ),
            ),
            // _body(context),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Webinar',
                style: poppins700.copyWith(
                  fontSize: 26,
                  color: ColorResources.textColor,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Belajar lewat webinar sesuai minat kamu',
                style: poppins400.copyWith(
                  fontSize: 10,
                  color: ColorResources.blueColor,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Image.asset('assets/image_webinar.png'),
        ),
      ],
    );
  }

  Widget _sliderTitle() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Teknologi',
                style: poppins700.copyWith(
                  fontSize: 14,
                  color: ColorResources.textColor,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorResources.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Persiapan Karir',
                style: poppins700.copyWith(
                  fontSize: 14,
                  color: ColorResources.textColor,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorResources.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Design',
                style: poppins700.copyWith(
                  fontSize: 14,
                  color: ColorResources.textColor,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorResources.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/dashboard/dashboard_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:project/ui/widgets/divider/divider_widget.dart';
import 'package:project/ui/widgets/social_icon.dart/social_icon.dart';
import 'package:project/ui/widgets/textfield/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            _logo(),
            _body(context),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Expanded(
      // width: 266,
      // height: 300,
      child: Image.asset('assets/logo2.png'),
    );
  }

  Widget _body(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorResources.primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Column(
          children: [
            _title(),
            _textField1(),
            const SizedBox(height: 20),
            _textField2(),
            const SizedBox(height: 20),
            _button(context),
            const SizedBox(height: 20),
            const Center(
              child: OrDivider(),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 21.0,
        bottom: 19,
      ),
      child: Center(
        child: Text(
          'Masuk dengan Akun',
          style: poppins600.copyWith(
            fontSize: 16,
            color: ColorResources.textColor,
          ),
        ),
      ),
    );
  }

  Widget _textField1() {
    return const Center(
      child: TextFieldWidget(
        hintText: 'nadifaadya@gmail.com',
        textColor: Color(0xff12517C),
      ),
    );
  }

  Widget _textField2() {
    return Center(
      child: TextFieldWidget(
        hintText: 'nedy123',
        icon: Icons.remove_red_eye,
        iconColor: Colors.grey[300],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => const DashboardPage(),
          ),
        );
      },
      child: const Center(
        child: ButtonMain(text: 'Masuk'),
      ),
    );
  }
}

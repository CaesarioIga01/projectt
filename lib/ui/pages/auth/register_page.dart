import 'package:flutter/material.dart';
import 'package:project/shared/color.dart';
import 'package:project/shared/styles.dart';
import 'package:project/ui/pages/dashboard/dashboard_page.dart';
import 'package:project/ui/widgets/button/button_main.dart';
import 'package:project/ui/widgets/textfield/textfield_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            _logo(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  _textFieldName(),
                  const SizedBox(height: 20),
                  _textFieldEmail(),
                  const SizedBox(height: 20),
                  _textFieldInstansi(),
                  const SizedBox(height: 20),
                  _textFieldPassword(),
                  const SizedBox(height: 20),
                  _button(context),
                ],
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: ColorResources.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Expanded(
      child: Image.asset('assets/logo2.png'),
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
          'Daftar Akun',
          style: poppins600.copyWith(
            fontSize: 16,
            color: ColorResources.textColor,
          ),
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return const Center(
      child: TextFieldWidget(hintText: 'Nama lengkap'),
    );
  }

  Widget _textFieldEmail() {
    return const Center(
      child: TextFieldWidget(hintText: 'Email'),
    );
  }

  Widget _textFieldInstansi() {
    return const Center(
      child: TextFieldWidget(
        hintText: 'Asal Instansi(opsional)',
      ),
    );
  }

  Widget _textFieldPassword() {
    return const Center(
      child: TextFieldWidget(hintText: 'Password'),
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
        child: ButtonMain(text: 'Daftar'),
      ),
    );
  }
}

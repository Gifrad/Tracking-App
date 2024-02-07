import 'package:flutter/material.dart';
import 'package:tracking_app/pages/register/widget/form_filed_register.dart';
import 'package:tracking_app/shared/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 61,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pendaftaran',
                    style: blackBodyTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'System Pelacakan personal oleh xenxor',
                    style: greySecondaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text(
                'Masukan Data Pendaftaran',
                style: greyThirdTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 22,
                left: 36,
                right: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FormFieldRegister(
                    title: 'Nama Lengkap',
                    hintText: 'name',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Nomor HP',
                    hintText: '+62',
                    textInputType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Email',
                    hintText: 'email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Username',
                    hintText: 'username',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Password',
                    hintText: '*****',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.05,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: blueButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
          onPressed: () {},
          child: Text(
            'Daftar',
            style: whiteTextStyle.copyWith(
              fontWeight: semibold,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

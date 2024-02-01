import 'package:flutter/material.dart';
import 'package:tracking_app/pages/register/widget/form_filed_register.dart';
import 'package:tracking_app/shared/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 28,
                left: 23,
              ),
              child: Text(
                'Setting',
                style: blackBodyTextStyle.copyWith(
                  fontWeight: semibold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 6,
                left: 23,
              ),
              child: Text(
                'Send geo-Location configuration',
                style: greySecondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: Text(
                      'Phone IMEI',
                      style: greyThirdTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 11),
                    child: Text(
                      '3244763629463846',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 33,
                left: 21,
              ),
              child: Text(
                'Server Connectivity',
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
                children: const [
                  FormFieldRegister(
                    title: 'Server IP',
                    hintText: '110.5.105.26',
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Server Port',
                    hintText: '1883',
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Username',
                    hintText: 'xenxor',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Password',
                    hintText: 'xenxor123',
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormFieldRegister(
                    title: 'Topic',
                    hintText: 'georelay',
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 43,
                left: 21,
              ),
              child: Text(
                'Location Parameter',
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
              child: const FormFieldRegister(
                title: 'Geo Distance Relay (meter)',
                hintText: '100',
                textInputType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: blueButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text(
                    'SAVE',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

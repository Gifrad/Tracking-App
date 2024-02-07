import 'package:flutter/material.dart';
import 'package:tracking_app/shared/theme.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: blackColor),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 13,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ganti Password',
              style: blackBodyTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 20,
              ),
            ),
            Text(
              'Tracking system provided by xenxor',
              style: greySecondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              'Password Sebelumnya',
              style: greyThirdTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11),
              width: 233,
              height: 25,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35,),
            Text(
              'Password baru',
              style: greyThirdTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11),
              width: 233,
              height: 25,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 11),
              width: 233,
              height: 25,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

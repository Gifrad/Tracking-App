import 'package:flutter/material.dart';
import 'package:tracking_app/pages/widget/custome_from_filed.dart';
import 'package:tracking_app/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  linearBg2,
                  linearBg1,
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 95,
                ),
                Image.asset(
                  'assets/logo_xenxor_white.png',
                  width: 195,
                ),
                SizedBox(
                  width: 195,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Indonesia',
                        style: whiteTextStyle.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 96,
                ),
                Text(
                  'Tracking System',
                  style: whiteTextStyle.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 96,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 20,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 28,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: blackTextStyle.copyWith(
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const CustomFormField(),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Password',
                        style: blackTextStyle.copyWith(
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const CustomFormField(),
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: SizedBox(
                          width: 195,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/start', (route) => false);
                            },
                            child: Text(
                              'LOGIN',
                              style: whiteTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              'Registration',
                              style: blueTextStyle.copyWith(
                                color: blueColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password',
                              style: blueTextStyle.copyWith(
                                color: blueColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/google_login.png',
                            width: 150,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 4,
            left: 1,
            right: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.014,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

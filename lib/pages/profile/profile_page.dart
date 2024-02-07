import 'package:flutter/material.dart';
import 'package:tracking_app/pages/profile/widget/profile_content.dart';

import '../../shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.19,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          linearBg1,
                          linearBg2,
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 15),
                        child: Text(
                          'Setting',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 40,
                          left: 18,
                          right: 18,
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/ic_user.png'),
                                ),
                              ),
                              child: Icon(
                                Icons.person,
                                color: blueColor,
                                size: 30,
                              ),
                            ),
                            title: Text(
                              'Syamsul Nasution',
                              style: blackTextStyle.copyWith(
                                fontWeight: semibold,
                              ),
                            ),
                            subtitle: Text(
                              'syamsul@sigfox.id',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                // top: 20,
                left: 11,
              ),
              child: Text(
                'Informasi Pengguna',
                style: blackBodyTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileContent(
                    icon: Icons.phone_android_sharp,
                    title: '0812-90262956',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ProfileContent(
                    icon: Icons.key,
                    title: 'Ganti Password',
                    onTap: () {
                      Navigator.pushNamed(context, '/change-password');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ProfileContent(
                    isAsset: true,
                    title: 'Xenxor Baru',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ProfileContent(
                    icon: Icons.location_city,
                    title: 'Geofence baru',
                    onTap: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 53,
                      left: 11,
                      bottom: 10,
                    ),
                    child: Text(
                      'Support Information',
                      style: blackBodyTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  ProfileContent(
                    icon: Icons.file_open,
                    title: 'Term & Condition',
                    onTap: () {
                      Navigator.pushNamed(context, '/term-condition');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ProfileContent(
                    icon: Icons.quick_contacts_dialer_outlined,
                    title: 'Contact Center',
                    onTap: () {
                      Navigator.pushNamed(context, '/customer-center');
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

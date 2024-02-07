import 'package:flutter/material.dart';
import 'package:tracking_app/pages/xenxor/widget/xenxor_list.dart';
import 'package:tracking_app/shared/theme.dart';

class XenxorPage extends StatelessWidget {
  const XenxorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.15,
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
                          margin: const EdgeInsets.only(left: 15, top: 31),
                          child: Text(
                            'Perangkat xenxor ',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 28, vertical: 20),
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
                                  fontWeight: bold,
                                ),
                              ),
                              subtitle: Text(
                                'Xenxor aktif : 2 Units',
                                style: blueTextStyle.copyWith(
                                  fontSize: 12,
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
                margin: const EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'List Perangkat Xenxor',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Divider(
                      color: blueColor,
                      thickness: 2,
                      endIndent: 285,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 26,
                        right: 18,
                      ),
                      child: Column(
                        children: const [
                          XenxorList(
                            isActive: true,
                            title: 'Xenxor ID 02C42',
                            subTitle: 'B 1710 CIA',
                            timeStamp: '25 May 2023',
                          ),
                          XenxorList(
                            isActive: true,
                            title: 'Xenxor ID 05HB3',
                            subTitle: 'B 4453 CBA',
                            timeStamp: '25 May 2023',
                          ),
                          XenxorList(
                            isActive: false,
                            title: 'Xenxor ID 02C66',
                            subTitle: 'Example 3',
                            timeStamp: '12 Mar 2022',
                          ),
                          XenxorList(
                            isActive: false,
                            title: 'Xenxor ID 05D42',
                            subTitle: 'Example 4',
                            timeStamp: '05 Feb 2022',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

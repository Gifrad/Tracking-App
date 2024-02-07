import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_app/shared/theme.dart';

class TermConditionPage extends StatelessWidget {
  const TermConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 26,
                left: 17,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.file_open_rounded,
                  size: 87,
                  color: blueColor,
                ),
                title: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Term of Service',
                    style: blueTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(top: 6),
                  child: Text(
                    'Update 03 March 2022',
                    style: blackBodyTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 26,
                left: 26,
                right: 13,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Conditions of use',
                    style: GoogleFonts.montserrat(
                      fontWeight: bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'By using this website, you certify that you have read and reviewed this Agreement and that you\nagree to comply with its terms. If you do not want to be bound by the terms of this Agreement,\nyou are advised to leave the website accordingly. [name] only grants use and access of this\nwebsite, its products, and its services to those who have accepted its terms.\n',
                    style: GoogleFonts.montserrat(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Privacy policy',
                    style: GoogleFonts.montserrat(
                      fontWeight: bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Before you continue using our website, we advise you to read our privacy policy [link to privacy\npolicy] regarding our user data collection. It will help you better understand our practices.\n',
                    style: GoogleFonts.montserrat(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Intellectual property',
                    style: GoogleFonts.montserrat(
                      fontWeight: bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'You agree that all materials, products, and services provided on this website are the property of\n[name], its affiliates, directors, officers, employees, agents, suppliers, or licensors including all\ncopyrights, trade secrets, trademarks, patents, and other intellectual property. You also agree\nthat you will not reproduce or redistribute the [name]’s intellectual property in any way,\nincluding electronic, digital, or new trademark\n',
                    style: GoogleFonts.montserrat(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'registrations.',
                    style: GoogleFonts.montserrat(
                      fontWeight: bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'You grant [name] a royalty-free and non-exclusive license to display, use, copy, transmit, and\nbroadcast the content you upload and publish. For issues regarding intellectual property claims,\nyou should contact the company in order to come to an agreement.\n',
                    style: GoogleFonts.montserrat(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: blueColor, width: 2)),
                      child: Center(
                        child: Text(
                          'Decline',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Accept',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

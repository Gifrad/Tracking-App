import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracking_app/pages/home/home_page.dart';
import 'package:tracking_app/pages/profile/profile_page.dart';
import 'package:tracking_app/pages/tracking/tracking_page.dart';
import 'package:tracking_app/pages/xenxor/xenxor_page.dart';
import 'package:tracking_app/providers/page_provider.dart';
import 'package:tracking_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PageProvider>(
      builder: (context, value, child) => Scaffold(
        body: value.currentIndex == 0
            ? const HomePage()
            : value.currentIndex == 1
                ? const TrackingPage()
                : value.currentIndex == 2
                    ? const XenxorPage()
                    : value.currentIndex == 3
                        ? const ProfilePage()
                        : const HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: value.currentIndex,
          selectedItemColor: blackColor,
          selectedFontSize: 16,
          unselectedFontSize: 16,
          selectedLabelStyle: blackTextStyle.copyWith(fontWeight: bold),
          onTap: (newValue) {
            value.currentIndex = newValue;
          },
          backgroundColor: bottomBg,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
                color:
                    value.currentIndex == 0 ? blackColor : greySecondaryColor,
              ),
              label: 'Depan',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 3,bottom: 3),
                child: Image.asset(
                  'assets/ic_tracking.png',
                  width: 28,
                  color:
                      value.currentIndex == 1 ? blackColor : greySecondaryColor,
                ),
              ),
              label: 'Pelacakan',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 3,bottom: 3),
                child: Image.asset(
                  'assets/ic_xenxor.png',
                  width: 20,
                  color:
                      value.currentIndex == 2 ? blackColor : greySecondaryColor,
                ),
              ),
              label: 'Xenxor',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                size: 28,
                color:
                    value.currentIndex == 3 ? blackColor : greySecondaryColor,
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tracking_app/pages/tracking/tracking_tab/tracking_tab_page.dart';
import 'package:tracking_app/shared/theme.dart';
import 'geofencing/geofencing_page.dart';
import 'informasi/informasi_page.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                linearBg1,
                linearBg2,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 31,
                  left: 18,
                ),
                child: Text(
                  'Pelacakan',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32, left: 16),
                child: TabBar(
                  indicatorColor: whiteColor,
                  indicatorWeight: 4,
                  isScrollable: true,
                  controller: controller,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  tabs: [
                    Tab(
                        child: Text(
                      'Informasi',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semibold,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Tracking',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semibold,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Geofencing',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semibold,
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          InformasiPage(),
          TrackingTabPage(),
          GeofencingPage(),
        ],
      ),
    );
  }
}

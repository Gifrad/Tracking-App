import 'package:flutter/material.dart';
import 'package:tracking_app/pages/profile/add-geofence/widget/list_geofence.dart';

import '../../../shared/theme.dart';

class ListGeofencePage extends StatelessWidget {
  const ListGeofencePage({super.key});

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
              'List Geofence',
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
              height: 50,
            ),
            const ListGeofence(
              title: 'Gambir',
              subtitle: 'Jl Medan Merdeka - Jakpus',
            ),
            const ListGeofence(
              title: 'SIGFOX Office',
              subtitle: 'Jl Sampit - Jaksel',
            ),
            const ListGeofence(
              title: 'Mall Cassablance',
              subtitle: 'Jl Panjang - Jaksel',
            ),
            const ListGeofence(
              title: 'Hotel Mercure',
              subtitle: 'Jl Gatot subroto - Jaksel',
            ),
          ],
        ),
      ),
    );
  }
}

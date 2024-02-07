import 'package:flutter/material.dart';
import 'package:tracking_app/pages/tracking/geofencing/widget/gepfencing.dart';

class GeofencingPage extends StatelessWidget {
  const GeofencingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 28,
            left: 6,
            right: 28,
          ),
          child: Column(
            children: const [
              Geofencing(
                title: 'B 1710 CIA',
                subTitle: 'Hotel Mercure - Gatsu',
                isOut: true,
                timeStamp: '10 Apr 2021 10:23',
              ),
              Geofencing(
                title: 'B 1710 CIA',
                subTitle: 'Hotel Mercure - Gatsu',
                isOut: false,
                timeStamp: '10 Apr 2021 10:23',
              ),
              Geofencing(
                title: 'B 1710 CIA',
                subTitle: 'Mall Cassablanca',
                isOut: false,
                timeStamp: '02 Apr 2021 12:23',
              ),
              Geofencing(
                title: 'B 1710 CIA',
                subTitle: 'Mall Cassablanca',
                isOut: true,
                timeStamp: '02 Apr 2021 10:23',
              ),
              Geofencing(
                title: 'B 1710 CIA',
                subTitle: 'Mandiri Gatsu',
                isOut: false,
                timeStamp: '02 Apr 2021 13:23',
              ),
            ],
          ),
        )
      ],
    );
  }
}

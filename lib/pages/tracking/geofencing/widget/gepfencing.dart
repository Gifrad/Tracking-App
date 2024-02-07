import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';

class Geofencing extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isOut;
  final String timeStamp;
  const Geofencing({
    super.key,
    required this.title,
    required this.subTitle,
    required this.isOut,
    required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.location_on,
            color: blueColor,
            size: 50,
          ),
          title: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitle,
                style: blackTextStyle.copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                isOut ? 'keluar' : 'Masuk',
                style: isOut
                    ? redTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      )
                    : greenTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
              ),
              Text(
                timeStamp,
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';

class ListGeofence extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListGeofence({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.location_city,
            color: greenColor,
            size: 40,
          ),
          title: Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
          trailing: TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: blueTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
              ),
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class ProfileContent extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback onTap;
  final bool isAsset;
  const ProfileContent({
    super.key,
    this.icon,
    required this.title,
    required this.onTap,
    this.isAsset = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 37),
          child: ListTile(
            onTap: onTap,
            leading: !isAsset
                ? Icon(
                    icon,
                    size: 35,
                    color: const Color(0xff699BF7),
                  )
                : Image.asset(
                    'assets/xenxor_blue.png',
                    width: 27,
                    height: 24,
                  ),
            title: Text(
              title,
              style: dropDownTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13,
              ),
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}

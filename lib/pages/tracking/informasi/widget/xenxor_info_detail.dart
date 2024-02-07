import 'package:flutter/material.dart';
import 'package:tracking_app/shared/theme.dart';

class XenxorInfoDetail extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isPercent;
  const XenxorInfoDetail(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.isPercent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: blackMontTextStyle.copyWith(
            color: isPercent == false ? blackColor : greenColor,
            fontWeight: semibold,
            fontSize: 12,
          ),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}

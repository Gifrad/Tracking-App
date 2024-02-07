import 'package:flutter/material.dart';
import 'package:tracking_app/shared/theme.dart';

class XenxorList extends StatelessWidget {
  final bool isActive;
  final String title;
  final String subTitle;
  final String timeStamp;
  const XenxorList({
    super.key,
    required this.isActive,
    required this.title,
    required this.subTitle,
    required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            isActive ? 'assets/xenxor_success.png' : 'assets/xenxor_failed.png',
            width: 34,
            height: 30,
          ),
          title: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 11,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitle,
                style: blackTextStyle.copyWith(fontSize: 10),
              ),
              const SizedBox(
                height: 13,
              )
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Expired Subscription',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 11,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                timeStamp,
                style: isActive
                    ? greenTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      )
                    : redTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      ),
              ),
              isActive
                  ? Text(
                      'Active',
                      style: greenTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Renewel',
                        style: whiteTextStyle.copyWith(
                          fontSize: 9,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Divider(
          thickness: 1,
          endIndent: 18,
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}

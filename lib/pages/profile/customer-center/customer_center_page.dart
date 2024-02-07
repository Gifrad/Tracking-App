import 'package:flutter/material.dart';
import 'package:tracking_app/shared/theme.dart';

class CustomerCenterPage extends StatelessWidget {
  const CustomerCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 13),
            child: Text(
              'Customer Support',
              style: blackBodyTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 82,
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/img_customer.png',
                  width: 98,
                  height: 98,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Call Center',
                  style: blackBodyTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Contact Us',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Email',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: blueButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text(
                      'FAQ',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

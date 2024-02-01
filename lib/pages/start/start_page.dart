import 'package:flutter/material.dart';
import 'package:tracking_app/shared/theme.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool isStart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_xenxor.png',
              width: 228,
              height: 52,
            ),
            SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Indonesia\t\t\t\t\t\t\t',
                    style: whiteTextStyle.copyWith(
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            Text(
              'Tracking System',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                setState(() {
                  isStart = !isStart;
                });
                print(isStart);
              },
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    width: 1,
                    color: isStart ? redColor : const Color(0xff0FA958),
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: isStart ? redColor : greenColor,
                  maxRadius: 100,
                  child: Text(
                    isStart? 'STOP' : 'START',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: medium,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 81,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/setting');
              },
              child: Text(
                'Setting',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.width * 0.014,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

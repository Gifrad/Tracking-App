import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class AddXenxorPage extends StatefulWidget {
  const AddXenxorPage({super.key});

  @override
  State<AddXenxorPage> createState() => _AddXenxorPageState();
}

class _AddXenxorPageState extends State<AddXenxorPage> {
  String dropdownvalue = 'X1, X2, X3, X4, X5';
  var items = [
    'X1',
    'X2',
    'X3',
    'X4',
    'X5',
  ];
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
              'Tambah Perangkat Baru',
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
              height: 35,
            ),
            Text(
              'Masukan Data Xenxor',
              style: blackBodyTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 22, left: 28, right: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jenis Xenxor',
                    style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  DropdownButton(
                    isExpanded: true,
                    hint: Text(
                      dropdownvalue,
                      style: redTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(5),
                    style: redTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                    items: items.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                        ),
                      );
                    }).toList(),
                    onChanged: ((newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Xenxor ID / IMEI',
                    style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                    ),
                  ),
                  TextFormField(
                    style: redTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '8758759595959',
                      hintStyle: redTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nama Xenxor',
                    style: blackTextStyle.copyWith(
                      fontWeight: semibold,
                    ),
                  ),
                  TextFormField(
                    style: redTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'B 123 RFS',
                      hintStyle: redTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 195,
        height: 35,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          onPressed: () {},
          child: Text(
            'DAFTAR',
            style: whiteTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: whiteColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

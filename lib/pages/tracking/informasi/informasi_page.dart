import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tracking_app/pages/tracking/informasi/widget/xenxor_info_detail.dart';

import '../../../shared/theme.dart';

class InformasiPage extends StatefulWidget {
  const InformasiPage({super.key});

  @override
  State<InformasiPage> createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
  String dropdownvalue = 'B 1710 CIA';
    var items = [
      'B 1710 CIA',
      'B 1710 KTA',
      'B 1710 DBA',
      'B 1710 JCS',
      'B 1710 UKD',
    ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            left: 18,
            right: 18,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/xenxor_blue.png'),
                  ),
                ),
                child: Icon(
                  Icons.person,
                  color: blueColor,
                  size: 30,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Xenxor',
                    style:
                        blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color(0xffE1E1E1),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 14,
                          right: 14,
                        ),
                        child: DropdownButton(
                          isExpanded: true,
                          value: dropdownvalue,
                          borderRadius: BorderRadius.circular(5),
                          style: dropDownTextStyle.copyWith(
                            fontWeight: bold,
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
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 24,
            left: 16,
          ),
          child: Text(
            'Informasi Perangkat',
            style: greyThirdTextStyle.copyWith(
              fontWeight: semibold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 14,
            left: 27,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              XenxorInfoDetail(
                title: 'Xenxor ID',
                subTitle: '2C0243',
                isPercent: false,
              ),
              SizedBox(
                height: 17,
              ),
              XenxorInfoDetail(
                title: 'Nama Xenxor',
                subTitle: 'B 1710 CIA',
                isPercent: false,
              ),
              SizedBox(
                height: 17,
              ),
              XenxorInfoDetail(
                title: 'Informasi Battery',
                subTitle: '80%',
                isPercent: true,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 31,
            left: 17,
          ),
          child: Text(
            'Posisi Terakhir',
            style: greyThirdTextStyle.copyWith(
              fontWeight: semibold,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          child: FlutterMap(
            options: MapOptions(
              center: LatLng(-6.195017, 106.822199),
              zoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.tracking_app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 150,
                    height: 150,
                    point: LatLng(-6.195017, 106.822199),
                    builder: (context) => Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 6),
                          padding: const EdgeInsets.all(8),
                          width: 120,
                          color: whiteColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Update:',
                                style: greyThirdTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 9,
                                ),
                              ),
                              Text(
                                '27 feb 2023 12:56:09',
                                style: greyThirdTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 9,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Image.asset(
                          'assets/ic_car.png',
                          width: 43,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:tracking_app/providers/picker_time_provider.dart';
import 'package:tracking_app/shared/theme.dart';
import 'package:http/http.dart' as http;

class TrackingTabPage extends StatefulWidget {
  const TrackingTabPage({super.key});

  @override
  State<TrackingTabPage> createState() => _TrackingTabPageState();
}

class _TrackingTabPageState extends State<TrackingTabPage> {
  List<LatLng> routpoints = [LatLng(52.517037, 13.388860)];
  final DateTime dateNow = DateTime.now();
  String xenxorValue = 'B 1710 CIA';
  var items = [
    'B 1710 CIA',
    'B 1710 KTA',
    'B 1710 DBA',
    'B 1710 JCS',
    'B 1710 UKD',
  ];

  void routing() async {
    var url = Uri.parse(
        'https://router.project-osrm.org/route/v1/driving/13.388860,52.517037;13.397634,52.529407?steps=true&annotations=true&geometries=geojson&overview=full');
    var response = await http.get(url);
    print(response.body);
    setState(() {
      routpoints = [];
      var ruter =
          jsonDecode(response.body)['routes'][0]['geometry']['coordinates'];
      for (int i = 0; i < ruter.length; i++) {
        var reep = ruter[i].toString();
        reep = reep.replaceAll("[", "");
        reep = reep.replaceAll("]", "");
        var lat1 = reep.split(',');
        var long1 = reep.split(",");
        routpoints.add(LatLng(double.parse(lat1[1]), double.parse(long1[0])));
      }
    });
  }

  @override
  void initState() {
    routing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
          ),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Pilih Xenxor',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.03,
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
                              value: xenxorValue,
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
                                  xenxorValue = newValue!;
                                });
                              }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        'Pilih Tanggal',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Consumer<PickerTimeProvider>(
                        builder: (context, value, child) => GestureDetector(
                          onTap: () async {
                            await value.picker(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color(0xffE1E1E1),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: [
                                  Text(
                                    value.picked == ''
                                        ? '${dateNow.year} ${dateNow.month} ${dateNow.day} ${dateNow.minute}:${dateNow.second}'
                                        : value.picked,
                                    style: dropDownTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: blueButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () async {},
                        child: Text(
                          'Lacak',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          child: FlutterMap(
            options: MapOptions(
              center: routpoints[0],
              zoom: 14,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.tracking_app',
              ),
              PolylineLayer(
                polylineCulling: false,
                polylines: [
                  Polyline(
                    color: blueColor,
                    strokeWidth: 9,
                    points: routpoints,
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    height: 50,
                    width: 50,
                    point: LatLng(52.527217, 13.387222),
                    builder: (context) => Image.asset('assets/ic_car.png'),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../shared/theme.dart';

class AddGeofencePage extends StatelessWidget {
  const AddGeofencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list-geofence');
              },
              child: Text(
                'List Geofence',
                style: blueTextStyle.copyWith(fontWeight: medium),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: blackColor),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buat Geofence',
                  style: blackBodyTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Maksimal Pendaftaran geofence 10 lokasi',
                  style: greySecondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Gambar Peta Geofence',
                    style: greySecondaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(-6.175344, 106.827294),
                zoom: 15,
              ),
              nonRotatedChildren: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Card(
                          elevation: 0,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.add,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(
                                width: 32,
                                child: Divider(
                                  thickness: 2,
                                  height: 0.1,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Card(
                            child: Icon(
                              Icons.fullscreen,
                              size: 28,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.edit_note_outlined,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(
                                width: 32,
                                child: Divider(
                                  thickness: 2,
                                  height: 0.1,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.delete_forever,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.tracking_app',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 13,
              right: 34,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Geofence',
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                TextFormField(
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Gambir',
                    hintStyle: blueTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Alamat Geofence',
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                TextFormField(
                  style: blueTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Jl. Medan merdeka',
                    hintStyle: blueTextStyle.copyWith(
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

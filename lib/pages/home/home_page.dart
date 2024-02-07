import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tracking_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  linearBg1,
                                  linearBg2,
                                ],
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(34),
                                bottomRight: Radius.circular(34),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  right: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.logout,
                                    size: 30,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'XENXOR',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Tracking System',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 30, top: 20),
                                child: Text(
                                  'Hi, Syamsul Nasution',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 4),
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
                                          image: AssetImage('assets/ic_user.png'),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.person,
                                        color: blueColor,
                                        size: 30,
                                      ),
                                    ),
                                    title: Text(
                                      'Syamsul Nasution',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: semibold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '3 Xenxor Terdaftar',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.613,
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(-6.195017, 106.822199),
                          zoom: 13,
                        ),
                        nonRotatedChildren: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20, bottom: 20),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.gps_fixed,
                                  color: blueButtonColor,
                                  size: 35,
                                ),
                              ),
                            ),
                          )
                        ],
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName: 'com.example.tracking_app',
                          ),
                          MarkerLayer(
                            markers: [
                              Marker(
                                width: 150,
                                height: 150,
                                point: LatLng(-6.175403, 106.824584),
                                builder: (context) => Column(
                                  children: [
                                    Image.asset(
                                      'assets/ic_car.png',
                                      width: 43,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      padding: const EdgeInsets.all(8),
                                      width: 100,
                                      color: whiteColor,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Xenxor ID : A24561',
                                            style: greyThirdTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 9,
                                            ),
                                          ),
                                          Text(
                                            'B 1710 CIA',
                                            style: redTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 9,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Marker(
                                width: 50,
                                height: 50,
                                point: LatLng(-6.2151577, 106.8108729),
                                builder: (context) =>
                                    Image.asset('assets/ic_car.png'),
                              ),
                              Marker(
                                width: 50,
                                height: 50,
                                point: LatLng(-6.214758, 106.812439),
                                builder: (context) =>
                                    Image.asset('assets/ic_car.png'),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  linearBg1,
                                  linearBg2,
                                ],
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(34),
                                bottomRight: Radius.circular(34),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  right: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.logout,
                                    size: 30,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'XENXOR',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Tracking System',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 9,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 30, top: 20),
                                child: Text(
                                  'Hi, Syamsul Nasution',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 4),
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
                                          image:
                                              AssetImage('assets/ic_user.png'),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.person,
                                        color: blueColor,
                                        size: 30,
                                      ),
                                    ),
                                    title: Text(
                                      'Syamsul Nasution',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: semibold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '3 Xenxor Terdaftar',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(-6.195017, 106.822199),
                          zoom: 13,
                        ),
                        nonRotatedChildren: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.gps_fixed,
                                  color: blueButtonColor,
                                  size: 35,
                                ),
                              ),
                            ),
                          )
                        ],
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName: 'com.example.tracking_app',
                          ),
                          MarkerLayer(
                            markers: [
                              Marker(
                                width: 150,
                                height: 150,
                                point: LatLng(-6.175403, 106.824584),
                                builder: (context) => Column(
                                  children: [
                                    Image.asset(
                                      'assets/ic_car.png',
                                      width: 50,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      padding: const EdgeInsets.all(8),
                                      width: 100,
                                      color: whiteColor,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Xenxor ID : A24561',
                                            style: greyThirdTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 9,
                                            ),
                                          ),
                                          Text(
                                            'B 1710 CIA',
                                            style: redTextStyle.copyWith(
                                              fontWeight: medium,
                                              fontSize: 9,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Marker(
                                width: 50,
                                height: 50,
                                point: LatLng(-6.2151577, 106.8108729),
                                builder: (context) =>
                                    Image.asset('assets/ic_car.png'),
                              ),
                              Marker(
                                width: 50,
                                height: 50,
                                point: LatLng(-6.214758, 106.812439),
                                builder: (context) =>
                                    Image.asset('assets/ic_car.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}

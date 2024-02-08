import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracking_app/pages/login/login_page.dart';
import 'package:tracking_app/pages/main_page.dart';
import 'package:tracking_app/pages/profile/add-geofence/add_geofence_page.dart';
import 'package:tracking_app/pages/profile/add-geofence/list_geofence_page.dart';
import 'package:tracking_app/pages/profile/add-xenxor/add_xenxor_page.dart';
import 'package:tracking_app/pages/profile/change-password/change_password.dart';
import 'package:tracking_app/pages/profile/customer-center/customer_center_page.dart';
import 'package:tracking_app/pages/profile/term-condition/term_condition_page.dart';
import 'package:tracking_app/pages/register/register_page.dart';
import 'package:tracking_app/pages/setting/setting_page.dart';
import 'package:tracking_app/pages/splash/splash_page.dart';
import 'package:tracking_app/pages/start/start_page.dart';
import 'package:tracking_app/providers/bottom_start_provider.dart';
import 'package:tracking_app/providers/page_provider.dart';
import 'package:tracking_app/providers/picker_time_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PageProvider()),
    ChangeNotifierProvider(create: (context) => ButtomStartProvider()),
    ChangeNotifierProvider(create: (context) => PickerTimeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/start': (context) => const StartPage(),
        '/setting': (context) => const SettingPage(),
        '/main': (context) => const MainPage(),
        '/change-password': (context) => const ChangePassword(),
        '/term-condition': (context) => const TermConditionPage(),
        '/customer-center': (context) => const CustomerCenterPage(),
        '/add-xenxor': (context) => const AddXenxorPage(),
        '/add-geofence': (context) => const AddGeofencePage(),
        '/list-geofence': (context) => const ListGeofencePage(),
      },
    );
  }
}

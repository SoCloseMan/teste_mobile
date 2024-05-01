import 'package:flutter/material.dart';
import 'package:teste_mobile/pages/devices_page.dart';
import 'package:teste_mobile/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/homePage',
      routes: {
        '/homePage': (context) => const HomePage(),
        '/devicesPage': (context) => const DevicesPage(),
      },
    ),
  );
}

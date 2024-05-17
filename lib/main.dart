import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/HomePage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => RockInRio(),
    ),
  );
}

class RockInRio extends StatelessWidget {
  const RockInRio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock in Rio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 162, 120, 235)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}





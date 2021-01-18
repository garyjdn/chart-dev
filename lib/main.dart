import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'ui/routes.dart';
import 'ui/screens/chart_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,//!kReleaseMode,
      builder: (context) => MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChartScreen(),
      routes: routes,
    );
  }
}

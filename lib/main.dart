import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dasboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ResponsiveDasBoard()));
}

class ResponsiveDasBoard extends StatelessWidget {
  const ResponsiveDasBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DasBoardView(),
    );
  }
}

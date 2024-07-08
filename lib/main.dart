import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dasboard_view.dart';

void main() {
  runApp(const ResponsiveDasBoard());
}

class ResponsiveDasBoard extends StatelessWidget {
  const ResponsiveDasBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DasBoardView(),
    );
  }
}

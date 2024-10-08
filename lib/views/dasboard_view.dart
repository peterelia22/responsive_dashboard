import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

import '../utils/app_styles.dart';

class DasBoardView extends StatefulWidget {
  const DasBoardView({super.key});

  @override
  State<DasBoardView> createState() => _DasBoardViewState();
}

class _DasBoardViewState extends State<DasBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width <= SizeConfig.tablet + 30
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tablet + 30
          ? AppBar(
              title: Center(
                child: Text(
                  'Dashboard ',
                  style: AppStyles.semiBold24(context),
                ),
              ),
              backgroundColor: const Color(0XFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [IncomeSectionHeader()],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_chart.dart';

import 'chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1837
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Chart(),
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}

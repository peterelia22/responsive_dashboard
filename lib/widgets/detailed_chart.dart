import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedChart extends StatefulWidget {
  const DetailedChart({super.key});

  @override
  State<DetailedChart> createState() => _ChartState();
}

class _ChartState extends State<DetailedChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
              title: activeIndex == 0 ? 'Design Services' : '40%',
              radius: activeIndex == 0 ? 60 : 50,
              titleStyle: AppStyles.medium16
                  .copyWith(color: activeIndex == 0 ? null : Colors.white),
              value: 40,
              color: Color(0xff208BC7)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 2.15 : null,
              title: activeIndex == 1 ? 'Design Product' : '25%',
              radius: activeIndex == 1 ? 60 : 50,
              titleStyle: AppStyles.medium16
                  .copyWith(color: activeIndex == 1 ? null : Colors.white),
              value: 25,
              color: Color(0xff4DB7F2)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
              title: activeIndex == 2 ? 'Machines' : '20%',
              radius: activeIndex == 2 ? 60 : 50,
              titleStyle: AppStyles.medium16
                  .copyWith(color: activeIndex == 2 ? null : Colors.white),
              value: 20,
              color: Color(0xff064060)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 3 ? 1.45 : null,
              title: activeIndex == 3 ? 'Others' : '22%',
              radius: activeIndex == 3 ? 60 : 50,
              titleStyle: AppStyles.medium16
                  .copyWith(color: activeIndex == 3 ? null : Colors.white),
              value: 22,
              color: Color(0xffE2DECD)),
        ]);
  }
}

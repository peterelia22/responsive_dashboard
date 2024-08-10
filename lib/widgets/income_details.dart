import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/detail_item_model.dart';
import 'package:responsive_dashboard/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    DetailItemModel(
        title: 'Design Services', percent: '40%', color: Color(0xff208BC7)),
    DetailItemModel(
        title: 'Design Product', percent: '25%', color: Color(0xff4DB7F2)),
    DetailItemModel(
        title: 'Machines', percent: '20%', color: Color(0xff064060)),
    DetailItemModel(title: 'Other', percent: '22%', color: Color(0xffE2DECD))
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IncomeDetailsItem(detailItemModel: items[index]);
        });
  }
}

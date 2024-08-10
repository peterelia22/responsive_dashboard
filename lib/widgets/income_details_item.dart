import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/detail_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.detailItemModel});
  final DetailItemModel detailItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            color: detailItemModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        detailItemModel.title,
        style: AppStyles.regular16,
      ),
      trailing: Text(
        detailItemModel.percent,
        style: AppStyles.medium16,
      ),
    );
  }
}

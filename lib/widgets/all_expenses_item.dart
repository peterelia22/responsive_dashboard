import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

import 'package:responsive_dashboard/widgets/active_expenses_item.dart';

import 'in_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensesItem(itemModel: itemModel)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}

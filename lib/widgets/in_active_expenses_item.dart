import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: itemModel.image,
              iconColor: Color(0xff064061),
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.tittle,
              style: AppStyles.medium16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyles.regular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              itemModel.price,
              style: AppStyles.semiBold24,
            )
          ],
        ));
  }
}

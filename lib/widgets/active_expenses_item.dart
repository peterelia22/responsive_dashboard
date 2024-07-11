import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
            color: Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: itemModel.image,
              iconColor: Colors.white,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.tittle,
              style: AppStyles.medium16.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyles.regular14.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              itemModel.price,
              style: AppStyles.semiBold24.copyWith(color: Colors.white),
            )
          ],
        ));
  }
}

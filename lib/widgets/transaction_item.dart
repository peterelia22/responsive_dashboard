import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItemModel});
  final TransactionModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0XFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.regular16.copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.semiBold20.copyWith(
              color: transactionItemModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xff7CD87A)),
        ),
      ),
    );
  }
}

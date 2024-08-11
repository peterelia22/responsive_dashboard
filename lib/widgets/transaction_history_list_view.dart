import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '10 FEB 2024',
        amount: r'22 , 365$',
        isWithdrawal: true),
    TransactionModel(
        title: 'FLutter App Project',
        date: '10 FEB 2024',
        amount: r'10 , 245$',
        isWithdrawal: false),
    TransactionModel(
        title: 'Peter Elia',
        date: '10 FEB 2024',
        amount: r'110 , 378$',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TransactionItem(transactionItemModel: e)).toList(),
    );
  }
}

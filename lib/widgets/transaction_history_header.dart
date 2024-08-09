import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.semiBold20,
        ),
        Text(
          'See All',
          style: AppStyles.semiBold16.copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}

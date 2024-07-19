import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/all_expenses_header.dart';

import 'package:responsive_dashboard/widgets/all_expenses_item_list_view.dart';

import 'custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}

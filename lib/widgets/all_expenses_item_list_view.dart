import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        tittle: 'Balance',
        date: 'December 2024',
        price: r'$22,125'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        tittle: 'Income',
        date: 'April 2024',
        price: r'$20,222'),
    AllExpensesItemModel(
        image: Assets.imagesExpensses,
        tittle: 'Expenses',
        date: 'April 2023',
        price: r'$21,422')
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                UpdateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModel: item,
                  isSelected: activeIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                UpdateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModel: item,
                  isSelected: activeIndex == index,
                ),
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void UpdateIndex(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
      });
    }
  }
}
    //  return SizedBox(
    //   height: 400,
    //   child: ListView.builder(
    //    scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //   itemBuilder: (context, index) {
    //      return AllExpensesItem(itemModel: items[index]);
    //     },
    //   ),
    //   );
 

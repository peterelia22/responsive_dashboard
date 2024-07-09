import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDasboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransactions, title: 'My Transactions'),
    DrawerItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesChart2, title: 'My Investments')
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}

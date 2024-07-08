import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  DrawerItemListView({super.key});
  List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDasboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransactions, title: 'My Transactions'),
    DrawerItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesChart2, title: 'My Investments')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return DrawerItem(drawerItemModel: items[index]);
        });
  }
}

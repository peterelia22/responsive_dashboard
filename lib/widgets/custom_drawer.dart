import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserListTile(
              tittle: 'jj', subTittle: 'dd', image: Assets.imagesAvatar),
          DrawerItemListView()
        ],
      ),
    );
  }
}

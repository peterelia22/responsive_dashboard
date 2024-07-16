import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/user_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesUser1,
        tittle: 'Madrani Andi',
        subTittle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar,
        tittle: 'Josua Nunito',
        subTittle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesUser2,
        tittle: 'Peter Elia',
        subTittle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: UserListTile(user: e),
                ))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       itemCount: items.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserListTile(
    //             user: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}

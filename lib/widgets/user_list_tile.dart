import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile(
      {super.key,
      required this.tittle,
      required this.subTittle,
      required this.image});
  final String tittle, subTittle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          tittle,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          subTittle,
          style: AppStyles.regular16,
        ),
      ),
    );
  }
}

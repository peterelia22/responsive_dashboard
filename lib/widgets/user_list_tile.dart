import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.user,
  });
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.image),
          title: Text(
            user.tittle,
            style: AppStyles.semiBold16,
          ),
          subtitle: Text(
            user.subTittle,
            style: AppStyles.regular16,
          ),
        ),
      ),
    );
  }
}

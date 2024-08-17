import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/assets.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assets.imagesMask)),
            color: Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Card Name',
                style:
                    AppStyles.regular16(context).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Peter Elia',
                style: AppStyles.medium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '4573 1235 4789 2247',
                    style: AppStyles.semiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '18/20 - 124',
                    style: AppStyles.regular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}

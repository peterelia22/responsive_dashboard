import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.iconColor});
  final String image;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const ShapeDecoration(
                    shape: OvalBorder(), color: Color(0xffFAFAFA)),
                child: Center(child: SvgPicture.asset(image)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57 * 2, // 90 degrees in radians
          child: Icon(
            color: iconColor,
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}

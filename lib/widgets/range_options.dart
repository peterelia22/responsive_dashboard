import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.medium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57, // 90 degrees in radians
            child: const Icon(
                color: Color(0xff064061), Icons.arrow_back_ios_new_outlined),
          )
        ],
      ),
    );
  }
}

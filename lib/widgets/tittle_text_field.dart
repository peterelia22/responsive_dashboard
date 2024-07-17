import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class TittleTextField extends StatelessWidget {
  const TittleTextField({super.key, required this.tittle, required this.hint});
  final String tittle, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: AppStyles.medium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint)
      ],
    );
  }
}

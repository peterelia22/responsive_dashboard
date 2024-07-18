import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/tittle_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TittleTextField(
                  tittle: 'Customer Name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TittleTextField(
                  tittle: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TittleTextField(
                  tittle: 'Item Name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TittleTextField(tittle: 'Item Amount', hint: 'USD'),
            ),
          ],
        )
      ],
    );
  }
}
